/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.pig.impl.logicalLayer;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.ArrayList;
import java.util.Set;

import org.apache.pig.PigException;
import org.apache.pig.impl.logicalLayer.schema.Schema;
import org.apache.pig.impl.plan.Operator;
import org.apache.pig.impl.plan.OperatorKey;
import org.apache.pig.impl.plan.PlanException;
import org.apache.pig.impl.plan.PlanVisitor;
import org.apache.pig.impl.plan.ProjectionMap;
import org.apache.pig.impl.plan.RequiredFields;
import org.apache.pig.impl.plan.VisitorException;
import org.apache.pig.impl.util.Pair;
import org.apache.pig.data.DataType;
import org.apache.pig.impl.logicalLayer.optimizer.SchemaRemover;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class LOFilter extends RelationalOperator {

    private static final long serialVersionUID = 2L;
    private LogicalPlan mComparisonPlan;
    private static Log log = LogFactory.getLog(LOFilter.class);

    /**
     * 
     * @param plan
     *            Logical plan this operator is a part of.
     * @param k
     *            Operator key to assign to this node.
     * @param comparisonPlan
     *            the filter condition
     */

    public LOFilter(LogicalPlan plan, OperatorKey k,
            LogicalPlan comparisonPlan) {
        super(plan, k);
        mComparisonPlan = comparisonPlan;
    }

    public LogicalOperator getInput() {
        return mPlan.getPredecessors(this).get(0);
    }

    public LogicalPlan getComparisonPlan() {
        return mComparisonPlan;
    }

    @Override
    public Schema getSchema() throws FrontendException {
        if (!mIsSchemaComputed) {
            LogicalOperator input = mPlan.getPredecessors(this).get(0);
            ArrayList<Schema.FieldSchema> fss = new ArrayList<Schema.FieldSchema>();
            try {
                if(input instanceof ExpressionOperator) {
                    Schema.FieldSchema fs = Schema.FieldSchema.copyAndLink(((ExpressionOperator)input).getFieldSchema(), input);
                    if(DataType.isSchemaType(fs.type)) {
                        mSchema = fs.schema;
                    } else {
                        fss.add(fs);
                        mSchema = new Schema(fss);
                    }
                } else {
                    if (getInput().getSchema()!=null) {
                        mSchema = Schema.copyAndLink( input.getSchema(), input );
                    }
                    else
                        mSchema = null;
                }
                mIsSchemaComputed = true;
            } catch (FrontendException ioe) {
                mSchema = null;
                mIsSchemaComputed = false;
                throw ioe;
            }
        }
        return mSchema;
    }

    @Override
    public String name() {
        return getAliasString() + "Filter " + mKey.scope + "-" + mKey.id;
    }

    @Override
    public boolean supportsMultipleInputs() {
        return false;
    }

    @Override
    public void visit(LOVisitor v) throws VisitorException {
        v.visit(this);
    }

    @Override
    public byte getType() {
        return DataType.BAG ;
    }

    public void unsetSchema() throws VisitorException{
        SchemaRemover sr = new SchemaRemover(mComparisonPlan);
        sr.visit();
        super.unsetSchema();
    }

    /**
     * @see org.apache.pig.impl.plan.Operator#clone()
     * Do not use the clone method directly. Operators are cloned when logical plans
     * are cloned using {@link LogicalPlanCloner}
     */
    @Override
    protected Object clone() throws CloneNotSupportedException {
        LOFilter filterClone = (LOFilter)super.clone();
        LogicalPlanCloneHelper lpCloner = new LogicalPlanCloneHelper(mComparisonPlan);
        filterClone.mComparisonPlan = lpCloner.getClonedPlan();
        return filterClone;
    }
    
    @Override
    public ProjectionMap getProjectionMap() {
        
        if(mIsProjectionMapComputed) return mProjectionMap;
        mIsProjectionMapComputed = true;
        
        Schema outputSchema;
        try {
            outputSchema = getSchema();
        } catch (FrontendException fee) {
            mProjectionMap = null;
            return mProjectionMap;
        }
        
        Schema inputSchema = null;        
        
        List<LogicalOperator> predecessors = (ArrayList<LogicalOperator>)mPlan.getPredecessors(this);
        if(predecessors != null) {
            try {
                inputSchema = predecessors.get(0).getSchema();
            } catch (FrontendException fee) {
                mProjectionMap = null;
                return mProjectionMap;
            }
        } else {
            mProjectionMap = null;
            return mProjectionMap;
        }
        
        if(Schema.equals(inputSchema, outputSchema, false, true)) {
            //there is a one is to one mapping between input and output schemas
            mProjectionMap = new ProjectionMap(false);
            return mProjectionMap;
        } else {
            //problem - input and output schemas for a filter have to match!
            mProjectionMap = null;
            return mProjectionMap;
        }
    }

    @Override
    public List<RequiredFields> getRequiredFields() {
        List<RequiredFields> requiredFields = new ArrayList<RequiredFields>();
        Set<Pair<Integer, Integer>> fields = new HashSet<Pair<Integer, Integer>>();
        TopLevelProjectFinder projectFinder = new TopLevelProjectFinder(
                mComparisonPlan);
        try {
            projectFinder.visit();
        } catch (VisitorException ve) {
            requiredFields.clear();
            requiredFields.add(null);
            return requiredFields;
        }
        Set<LOProject> projectStarSet = projectFinder.getProjectStarSet();

        if (projectStarSet != null) {
            requiredFields.add(new RequiredFields(true));
            return requiredFields;
        } else {
            for (LOProject project : projectFinder.getProjectSet()) {
                for (int inputColumn : project.getProjection()) {
                    fields.add(new Pair<Integer, Integer>(0,
                            inputColumn));
                }
            }
            if(fields.size() == 0) {
                requiredFields.add(new RequiredFields(false, true));
            } else {                
                requiredFields.add(new RequiredFields(new ArrayList<Pair<Integer, Integer>>(fields)));
            }
            return (requiredFields.size() == 0? null: requiredFields);
        }
    }

    /* (non-Javadoc)
     * @see org.apache.pig.impl.plan.Operator#rewire(org.apache.pig.impl.plan.Operator, org.apache.pig.impl.plan.Operator)
     */
    @Override
    public void rewire(Operator<LOVisitor> oldPred, int oldPredIndex, Operator<LOVisitor> newPred, boolean useOldPred) throws PlanException {
        super.rewire(oldPred, oldPredIndex, newPred, useOldPred);
        LogicalOperator previous = (LogicalOperator) oldPred;
        LogicalOperator current = (LogicalOperator) newPred;
        try {
            ProjectFixerUpper projectFixer = new ProjectFixerUpper(
                    mComparisonPlan, previous, oldPredIndex, current, useOldPred, this);
            projectFixer.visit();
        } catch (VisitorException ve) {
            int errCode = 2144;
            String msg = "Problem while fixing project inputs during rewiring.";
            throw new PlanException(msg, errCode, PigException.BUG, ve);
        }
    }
    
    @Override
    public List<RequiredFields> getRelevantInputs(int output, int column) throws FrontendException {
        if (!mIsSchemaComputed)
            getSchema();
        
        if (output!=0)
            return null;
        
        if (column<0)
            return null;
        
        // if we have schema information, check if output column is valid
        if (mSchema!=null)
        {
            if (column >= mSchema.size())
                return null;
        }
        
        ArrayList<Pair<Integer, Integer>> inputList = new ArrayList<Pair<Integer, Integer>>();
        inputList.add(new Pair<Integer, Integer>(0, column));
        List<RequiredFields> result = new ArrayList<RequiredFields>();
        result.add(new RequiredFields(inputList));
        return result;
    }
    
    @Override
    public boolean pruneColumns(List<Pair<Integer, Integer>> columns)
            throws FrontendException {
        if (!mIsSchemaComputed)
            getSchema();
        if (mSchema == null) {
            log
                    .warn("Cannot prune columns in filter, no schema information found");
            return false;
        }
        for (int i=columns.size()-1;i>=0;i--) {
            Pair<Integer, Integer> column = columns.get(i);
            if (column.first != 0) {
                int errCode = 2191;
                throw new FrontendException(
                        "Filter only take 1 input, cannot prune input with index "
                                + column.first, errCode, PigException.BUG);
            }
            if (column.second < 0) {
                int errCode = 2192;
                throw new FrontendException("Column to prune does not exist", errCode,
                        PigException.BUG);
            }
            pruneColumnInPlan(mComparisonPlan, column.second);
        }
        super.pruneColumns(columns);
        return true;
    }
}
