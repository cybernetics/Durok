��    �      �  �         �  ~   �  p  0  �   �  F   P  I   �     �  0        2  L   D  J   �  -   �  5   
  (   @  L   i     �  D   �  ?     B   U  D   �     �  I   �  =   G  A   �  J   �  =     8   P  9   �  C   �  F     (   N  @   w  B   �  M   �  K   I  8   �  ,   �  J   �  9   F  /   �  0   �  K   �  $   -  G   R  )   �  V  �  9        U  G   t  A   �  <   �  .   ;  C   j  ,   �  ?   �  <     E   X  B   �  %   �  5     F   =  .   �  >   �  >   �  A   1   8   s   3   �   #   �   /   !  D   4!  /   y!  4   �!  �   �!  !   �"     �"  !   #     %#  F   E#  =   �#  I   �#  &   $     ;$     Z$  I   r$  1   �$  &   �$     %     ,%     I%     e%  $   }%     �%     �%     �%     �%     �%     &     "&  #   2&     V&  �   q&  =   #'  '   a'     �'     �'     �'  %   �'     �'     �'     (     (     '(  "   4(  4   W(     �(  .   �(     �(  ;   �(  3   +)  /   _)  +   �)  '   �)  #   �)     *     '*     C*  *   S*     ~*  )   �*  !   �*  '   �*  )   +     /+     F+      V+      w+     �+     �+  	   �+     �+     �+     �+     ,  1   ,  2   I,  0   |,     �,  #   �,     �,  )   -  1   2-  -   d-     �-     �-     �-     �-     �-     �-  "   .  %   3.     Y.     g.     s.     �.  	   �.     �.     �.     �.     �.  ,   �.     /     /     //  
   C/     N/  v  [/  p   �0  �  C1  �   �2  D   �3  G   �3  (   4  >   :4     y4  �   �4  �   5  1   �5  @   �5  -   	6  o   76     �6  O   �6  p   7  j   �7  x   �7  +   j8  H   �8  A   �8  2   !9  m   T9  �   �9  B   K:  B   �:  B   �:  x   ;  #   �;  o   �;  K   !<  ?   m<  u   �<  C   #=  =   g=  N   �=  ;   �=  @   0>  .   q>  R   �>  0   �>  G   $?  8   l?  v  �?  ?   A  '   \A  `   �A  A   �A  L   'B  -   tB  I   �B  ,   �B  F   C  H   `C  S   �C  Q   �C  (   OD  =   xD  E   �D  =   �D  9   :E  I   tE  H   �E  <   F  :   DF  -   F  6   �F  E   �F  2   *G  D   ]G     �G     �H  &   �H  *   �H  #   I  t   8I  �   �I  ]   9J  -   �J     �J     �J  W   K  C   YK  7   �K     �K     �K  -   L     :L  ,   TL     �L     �L     �L  
   �L  &   �L  (   �L      M  *   0M  "   [M  �   ~M  C   +N  "   oN  
   �N     �N     �N  2   �N     �N     O     -O     DO     [O  %   lO  7   �O     �O  9   �O     $P  4   7P  .   lP  *   �P  &   �P  "   �P     Q     /Q     JQ     aQ  6   mQ     �Q  -   �Q  &   �Q  .   R  8   ?R     xR     �R  "   �R     �R      �R     S     S     &S     ?S     DS      TS  4   uS  >   �S  1   �S     T  (   ;T  "   dT  1   �T  =   �T  .   �T  "   &U     IU     iU     �U     �U     �U     �U  /   �U     
V     V     *V     =V     JV     RV     nV     vV     �V  1   �V     �V  $   �V  %   W     5W     AW        +   �               9   X          o   �   �       u   ~   �       q   $      �   �       a   �      d   r   0      |   j   W      e          �              F   .      �       �       
   c      H   R         Z           �   �   w   4   @         _   z   '   �   g       �      5   �   l          �   ^   �   �   �       �   �   �   G   !   ]                  m           y       �   J   *   �       "   �   I      �   8          (              Y   =          :   �   f   ?      [   �   2   �       k   7   �   �   A       {   Q   �   t   -   V               }   �       �      h       C      K   T      M   �       3   6   /   P                     `   B   O   b   >   �   ;           S   D   i   #   �   �   �   ,   \               U   s   )   <   �       1       E       N       �   �              �           %   x   &   �   L          �   �           	   �           v       p   �       n      Either GFMT or LFMT may contain:
    %%  %
    %c'C'  the single character C
    %c'\OOO'  the character with octal code OOO   GFMT may contain:
    %<  lines from FILE1
    %>  lines from FILE2
    %=  lines common to FILE1 and FILE2
    %[-][WIDTH][.[PREC]]{doxX}LETTER  printf-style spec for LETTER
      LETTERs are as follows for new group, lower case for old group:
        F  first line number
        L  last line number
        N  number of lines = L-F+1
        E  F-1
        M  L+1   LFMT may contain:
    %L  contents of line
    %l  contents of line, excluding any trailing newline
    %[-][WIDTH][.[PREC]]{doxX}n  printf-style spec for input line number   LTYPE is `old', `new', or `unchanged'.  GTYPE is LTYPE or `changed'.   Skip the first SKIP1 bytes of FILE1 and the first SKIP2 bytes of FILE2. %s %s differ: byte %s, line %s
 %s %s differ: byte %s, line %s is %3o %s %3o %s
 %s: diff failed:  --GTYPE-group-format=GFMT  Similar, but format GTYPE input groups with GFMT. --LTYPE-line-format=LFMT  Similar, but format LTYPE input lines with LFMT. --binary  Read and write data in binary mode. --diff-program=PROGRAM  Use PROGRAM to compare files. --from-file and --to-file both specified --from-file=FILE1  Compare FILE1 to all operands.  FILE1 can be a directory. --help  Output this help. --horizon-lines=NUM  Keep NUM lines of the common prefix and suffix. --ignore-file-name-case  Ignore case when comparing file names. --line-format=LFMT  Similar, but format all input lines with LFMT. --no-ignore-file-name-case  Consider case when comparing file names. --normal  Output a normal diff. --speed-large-files  Assume large files and many scattered small changes. --strip-trailing-cr  Strip trailing carriage return on input. --tabsize=NUM  Tab stops are every NUM (default 8) print columns. --to-file=FILE2  Compare all operands to FILE2.  FILE2 can be a directory. --unidirectional-new-file  Treat absent first files as empty. -3  --easy-only  Output unmerged nonoverlapping changes. -A  --show-all  Output all changes, bracketing conflicts. -B  --ignore-blank-lines  Ignore changes whose lines are all blank. -D NAME  --ifdef=NAME  Output merged file to show `#ifdef NAME' diffs. -D option not supported with directories -E  --ignore-tab-expansion  Ignore changes due to tab expansion. -E  --show-overlap  Output unmerged changes, bracketing conflicts. -H  --speed-large-files  Assume large files and many scattered small changes. -I RE  --ignore-matching-lines=RE  Ignore changes whose lines all match RE. -L LABEL  --label=LABEL  Use LABEL instead of file name. -N  --new-file  Treat absent files as empty. -S FILE  --starting-file=FILE  Start with FILE when comparing directories. -T  --initial-tab  Make tabs line up by prepending a tab. -W  --ignore-all-space  Ignore all white space. -X  Output overlapping changes, bracketing them. -X FILE  --exclude-from=FILE  Exclude files that match any pattern in FILE. -a  --text  Treat all files as text. -b  --ignore-space-change  Ignore changes in the amount of white space. -b  --print-bytes  Print differing bytes. -c  -C NUM  --context[=NUM]  Output NUM (default 3) lines of copied context.
-u  -U NUM  --unified[=NUM]  Output NUM (default 3) lines of unified context.
  --label LABEL  Use LABEL instead of file name.
  -p  --show-c-function  Show which C function each change is in.
  -F RE  --show-function-line=RE  Show the most recent line matching RE. -d  --minimal  Try hard to find a smaller set of changes. -e  --ed  Output an ed script. -e  --ed  Output unmerged changes from OLDFILE to YOURFILE into MYFILE. -i  --ignore-case  Consider upper- and lower-case to be the same. -i  --ignore-case  Ignore case differences in file contents. -i  Append `w' and `q' commands to ed scripts. -i SKIP  --ignore-initial=SKIP  Skip the first SKIP bytes of input. -i SKIP1:SKIP2  --ignore-initial=SKIP1:SKIP2 -l  --left-column  Output only the left column of common lines. -l  --paginate  Pass the output through `pr' to paginate it. -l  --verbose  Output byte numbers and values of all differing bytes. -m  --merge  Output merged file instead of ed script (default -A). -n  --rcs  Output an RCS format diff. -n LIMIT  --bytes=LIMIT  Compare at most LIMIT bytes. -o FILE  --output=FILE  Operate interactively, sending output to FILE. -q  --brief  Output only whether files differ. -r  --recursive  Recursively compare any subdirectories found. -s  --quiet  --silent  Output nothing; yield exit status only. -s  --report-identical-files  Report when two files are the same. -s  --suppress-common-lines  Do not output common lines. -t  --expand-tabs  Expand tabs to spaces in output. -v  --version  Output version info. -w  --ignore-all-space  Ignore all white space. -w NUM  --width=NUM  Output at most NUM (default 130) print columns. -x  --overlap-only  Output overlapping changes. -x PAT  --exclude=PAT  Exclude files that match PAT. -y  --side-by-side  Output in two columns.
  -W NUM  --width=NUM  Output at most NUM (default 130) print columns.
  --left-column  Output only the left column of common lines.
  --suppress-common-lines  Do not output common lines. Common subdirectories: %s and %s
 Compare files line by line. Compare three files line by line. Compare two files byte by byte. Exit status is 0 if inputs are the same, 1 if different, 2 if trouble. Exit status is 0 if successful, 1 if conflicts, 2 if trouble. FILES are `FILE1 FILE2' or `DIR1 DIR2' or `DIR FILE...' or `FILE... DIR'. File %s is a %s while file %s is a %s
 Files %s and %s are identical
 Files %s and %s differ
 If --from-file or --to-file is given, there are no restrictions on FILES. If a FILE is `-' or missing, read standard input. If a FILE is `-', read standard input. Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Memory exhausted No match No newline at end of file No previous regular expression Only in %s: %s
 Premature end of regular expression Regular expression too big SKIP values may be followed by the following multiplicative suffixes:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, and so on for T, P, E, Z, Y. SKIP1 and SKIP2 are the number of bytes to skip in each file. Side-by-side merge of file differences. Success Torbjorn Granlund Trailing backslash Try `%s --help' for more information. Unknown system error Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... FILE1 FILE2
 Usage: %s [OPTION]... FILE1 [FILE2 [SKIP1 [SKIP2]]]
 Usage: %s [OPTION]... FILES
 Usage: %s [OPTION]... MYFILE OLDFILE YOURFILE
 Written by %s and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, %s, and others.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
and %s.
 Written by %s, %s, %s,
%s, %s, %s, and %s.
 Written by %s, %s, %s,
%s, %s, and %s.
 Written by %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
and %s.
 Written by %s, %s, and %s.
 Written by %s.
 `-' specified for more than one input file block special file both files to be compared are directories cannot compare `-' to a directory cannot compare file names `%s' and `%s' cannot interactively merge standard input character special file cmp: EOF on %s
 conflicting %s option value `%s' conflicting output style options conflicting tabsize options conflicting width options directory extra operand `%s' fifo incompatible options input file shrank internal error: invalid diff type in process_diff internal error: invalid diff type passed to output internal error: screwup in format of diff blocks invalid --bytes value `%s' invalid --ignore-initial value `%s' invalid context length `%s' invalid diff format; incomplete last line invalid diff format; incorrect leading line chars invalid diff format; invalid change separator invalid horizon length `%s' invalid tabsize `%s' invalid width `%s' memory exhausted message queue missing operand after `%s' options -l and -s are incompatible pagination not supported on this host program error read failed regular empty file regular file semaphore shared memory object socket stack overflow standard output subsidiary program `%s' could not be invoked symbolic link too many file label options typed memory object weird file write failed Project-Id-Version: GNU diffutils 2.8.7
Report-Msgid-Bugs-To: bug-diffutils@gnu.org
POT-Creation-Date: 2010-02-11 10:26+0100
PO-Revision-Date: 2009-01-30 22:00+0100
Last-Translator: Rafał Maszkowski <rzm@icm.edu.pl>
Language-Team: Polish <translation-team-pl@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8-bit
   GFMT i LFMT mogą zawierać:
    %%  %
    %c'C'  pojedynczy znak C
    %c'\OOO'  znak o kodzie ósemkowym OOO   GFMT może zawierać:
    %<  linie z PLIKU1
    %>  linie z PLIKU2
    %=  linie wspólne dla PLIKU1 i PLIKU2
    %[-][SZER][.[DOKŁ]]{doxX}LITERA  specyfikacja w stylu printf dla LITERY
      LITERY są następujące dla nowej grupy (małe dla starej grupy):
        F  numer pierwszej linii
        L  numer ostatniej linii
        N  ilość linii = L-F+1
        E  F-1
        M  L+1   LFMT może zawierać:
    %L  zawartość linii
    %l  zawartość linii z wyłączeniem znaku nowej linii
    %[-][SZER][.[DOKŁ]]{doxX}n  specyfikację numeru linii w stylu printf TYPL to `old', `new' albo `unchanged'.  TYPG to TYPL albo `changed'.   Przeskoczenie pierwszych SKOK1 bajtów PLIKU1 i SKOK2 bajtów PLIKU2. %s %s różnią się: bajt %s, linia %s
 %s %s różnią się: bajt %s, linia %s zawiera %3o %s %3o %s
 %s: diff nie zadziałał:  --TYPG-group-format=GFMT   Podobnie, ale z użyciem GFMT do sformatowania grup
                           wejściowych typu TYPG --TYPL-group-format=LFMT   Podobnie, ale z użyciem LFMT do sformatowania grup
                           wejściowych typu TYPL --binary  Czytanie i zapisywanie danych binarnie. --diff-program=PROGRAM  Użycie PROGRAMU do porównania plików. równocześnie podane --from-file i --to-file --from-file=PLIK1  Porównanie PLIKU1 z wszystkimi argumentami.
                   PLIK1 może być katalogiem. --help  Wypisanie tego opisu. --horizon-lines=ILE  Zostawienie ILE linii wspólnego przedrostka i przyrostka. --ignore-space-change    Zignorowanie wielkości liter przy porównywaniu
                         nazw plików. --line-format=LFMT  Podobnie, ale z użyciem LFMT do sformatowania linii
                    wejściowych. --no-ignore-file-name-case  Uwzględnianie wielkości liter przy porównywaniu
                            nazw plików. --normal  Wynik w postaci zwykłego diff-a. --speed-large-files  Założenie: duże pliki i rozrzucone małe zmiany. --strip-trailing-cr  Pominięcie znaków nowej linii na wejściu. --tabsize=ILE  TAB-y co ILE (domyślnie 8) kolumn. --to-file=PLIK2  Porównanie wszystkich argumentów z PLIKIEM2.
                 PLIK2 może być katalogiem. --unidirectional-new-file  Traktowanie brakujących pierwszych plików
                               w pierwszym zestawie jako pustych. -3  --easy-only  Wypisanie niezłączonych nienachodzących zmian. -A  --show-all  Wypisanie wszystkich zmian, konflikty w nawiasach. -B  --ignore-blank-lines  Zignorowanie zmian liczby pustych linii. -D NAZWA  --ifdef=NAZWA  Wypisanie połączonego pliku dla pokazania różnic
                         w `#ifdef NAZWA'. opcja -D nie działa dla katalogów -E  --ignore-tab-expansion  Zignorowanie zmian spowodowanych rozwinięciem
                            TAB-ów. -E  --show-overlap  Wypisanie niezłączonych zmian, konflikty w nawiasach. -H  --speed-large-files  Duże pliki i rozrzucone małe zmiany. -I RE  --ignore-matching-lines=RE  Zignorowanie zmian w liniach pasujących
                                   do RE. -L ETYKIETA --label=ETYKIETA  Użycie ETYKIETY zamiast nazwy pliku. -N  --new-file  Traktowanie brakujących plików jak pustych. -S PLIK  --starting-file=PLIK  Zacznij od PLIKU przy porównywaniu katalogów. -T  --initial-tab  Wyrównanie linii przez użycie TAB-ów. -W  --ignore-all-space  Ignorowanie wszystkich znaków odstępu. -X  Wypisanie nachodzących zmian w nawiasach. -X PLIK  --exclude-from=PLIK  Pominięcie plików pasujących do wzorców w PLIKU. -a  --text  Traktowanie plików jako tekstowych. -b  --ignore-space-change  Zignorowanie zmian ilości znaków odstępu. -b  --print-chars  Wypisanie różniących się bajtów. -c  -C ILE  --context[=ILE]  Skopiowanie ILE (domyślnie 2) linii kontekstu.
-u  -U ILE  --unified[=ILE]  ILE (domyślnie 2) linii zunifikowanego kontekstu.
  --label ETYKIETA           Użycie ETYKIETY zamiast nazwy pliku.
  -p  --show-c-function      Wskazanie funkcji C, w których są zmiany.
  -F RE  --show-function-line=RE  Pokazanie ostatniej linii pasującej do RE. -d  --minimal  Usiłowanie znalezienia mniejszego zbioru zmian. -e  --ed  Wynik w postaci poleceń ed-a -e  --ed  Wypisanie niezłączonych zmian między STARY_PLIK a NOWY_PLIK do
          MÓJ_PLIK. -i  --ignore-case  Traktowanie małych i wielkich liter tak samo. -i  --ignore-case  Ignorowanie różnic między wielkimi i małymi literami. -i  Dodanie komendy `w' i `q' do komend ed-a. -i OMIŃ  --ignore-initial=OMIŃ  Przeskoczenie pierwszych OMIŃ bajtów. -i SKOK1:SKOK2  --ignore-initial=SKOK1:SKOK2 -I  --left-column  Wypisanie tylko lewej kolumny dla wspólnych linii. -I  --paginate  Przepuszczenie wyniku przez `pr' żeby go stronnicować. -I  --verbose  Wypisanie położeń i kodów wszystkich różniących się bajtów. -m   -merge  Wypisanie połączonych plików zamiast komend ed-a (domyślnie -A). -n  --rcs  Wynik w postaci diff-a z RCS. -n LIMIT  --bytes=LIMIT  Porównanie najwyżej LIMIT bajtów. -o PLIK  --output=PLIK  Tryb interakcyjny, wyniki wysyłane do PLIKU. -q  --brief  Wypisanie wyniku tylko gdy pliki się różnią. -r  --recursive  Porównanie podkatalogów rekurencyjnie. -s  --quiet  --silnet  Bez wypisania wyników; tylko przekazanie statusu. -s  --report-identical-files  Informowanie gdy dwa pliki są takie same. -s  --suppress-common-lines  Bez wypisania wspólnych linii. -t  --expand-tabs  Rozwinięcie TAB-ów w spacje w wyniku. -v  --version  Wypisanie informacji o wersji. -w  --ignore-all-space  Zignorowanie znaków odstępu. -w ILE  --width=ILE  Wypisanie najwyżej ILE (domyślnie 130) kolumn. -x  --overlap-only  Wypisanie nachodzących zmian. -x WZÓR  --exclude=WZÓR  Wykluczenie plików pasujących do WZORU. -y  --side-by-side  Wynik w dwóch kolumnach.
  -W ILE  --width=ILE  Wypisanie najwyżej ILE (domyślnie 130) znaków w linii.
  --left-column  Wypisanie tylko lewej kolumny dla wspólnych linii.
  --suppress-common-lines  Bez wypisywania wspólnych linii. Wspólne podkatalogi: %s i %s
 Porównanie plików kolejnymi liniami. Porównanie trzech plików linia po linii. Porównanie plików bajt po bajcie. Status wyjściowy ma wartość 0 gdy pliki wejściowe są takie same, 1 - jeżeli
różne, 2 - jeżeli są problemy. Status wyjściowy ma wartość 0 gdy polecenie wykonało się z prawidłowym
wynikiem, 1 - jeżeli są konflikty, 2 - jeżeli są problemy. PLIKI to `PLIK1 PLIK2' albo `KATALOG1 KATALOG2' albo `KATALOG PLIK...' albo
PLIK... KATALOG'. Plik %s jest %s, podczas gdy plik %s jest %s
 Pliki %s i %s są identyczne
 Pliki %s i %s różnią się
 Jeżeli użyta jest opcja --from-file albo --to-file, nie ma ograniczeń co do
PLIKÓW. Jeżeli PLIK to `-' lub go brak, czytane jest standardowe wejście. Jeżeli PLIK to `-', czytane jest standardowe wejście. Błędny odnośnik wstecz Błędne nazwa klasy znaków Znak błędny dla bieżącego uporządkowania Błędna zawartość \{\} Błędne poprzedzające wyrażenie regularne Błędny koniec zakresu Błędne wyrażenie regularne Brak pamięci Nie pasuje Brak znaku nowej linii na końcu pliku Brak poprzedniego wyrażenia regularnego Tylko w %s: %s
 Przedwczesny koniec wyrażenia regularnego Wyrażenia regularne jest za duże Po wartości SKOKU mogą być dodane następujące przyrostki:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, i tak dalej dla T, P, E, Z, Y. SKOK1 i SKOK2 to liczby bajtów do pominięcia w każdym z plików. Interaktywne połączenie plików. Powodzenie Torbjörn Granlund Końcowy ukośnik odwrotny Napisz `%s --help' żeby dowiedzieć się więcej. Nieznany błąd systemu Nie sparowany ( lub \( Nie sparowany ) lub \) Nie sparowany [ lub [^ Nie sparowany \{ Składnia: %s [OPCJA]... PLIK1 PLIK2
 Składnia: %s [OPCJA]... PLIK1 [PLIK2 [SKOK1 [SKOK2]]]
 Składnia: %s [OPCJA]... PLIKI
 Składnia: %s [OPCJA]... MÓJ_PLIK STARY_PLIK TWÓJ_PLIK
 Autorzy: %s i %s.
 Autorzy: %s, %s, %s,
%s, %s, %s, %s,
%s, %s i inni.
 Autorzy: %s, %s, %s,
%s, %s, %s, %s,
%s i %s.
 Autorzy: %s, %s, %s,
%s, %s, %s, %s
i %s.
 Autorzy: %s, %s, %s,
%s, %s, %s i %s.
 Autorzy: %s, %s, %s,
%s, %s i %s.
 Autorzy: %s, %s, %s,
%s i %s.
 Autorzy: %s, %s, %s
i %s.
 Autorzy: %s, %s i %s.
 Autor: %s.
 `-' podany dla więcej niż jednego pliku wejściowego specjalny plik blokowy oba mające być porównane pliki to katalogi nie można porównać `-' z katalogiem nie można porównać nazw plików `%s' i `%s' nie mogę interakcyjnie łączyć standardowego wejścia specjalny plik znakowy cmp: EOF przy %s
 sprzeczna wartość opcji %s: `%s' sprzeczne opcje stylu wyniku sprzeczne opcje rozmiarów TAB-a sprzeczne opcje szerokości katalog nadmiarowy argument `%s' fifo niezgodne opcje plik wejściowy się zmniejszył błąd wewnętrzny: błędny typ diff w process_diff błąd wenwętrzny: błędny typ diff-a przekazany na wyjście bład wewnętrzny: spieprzony format bloków diff błędna wartość --bytes `%s' błędna wartość --ignore-initial `%s' błędna długość kontekstu `%s' błędny format diff; niekompletna ostatnia linia błędny format diff; nieprawidłowe znaki na początku linii błędny format diff; błędny separator zmian błędna długość horyzontu `%s' błędny rozmiar tabulacji `%s' błędna szerokość `%s' brak pamięci kolejka komunikatów brakujący argument po `%s' sprzeczne opcje -l i -s stronicowanie nie jest możliwe na tej maszynie błąd programu nieudany odczyt zwykły pusty plik zwykły plik semafor obiekt w pamięci dzielonej gniazdo przepełnienie stosu standardowe wyjście nie mógł być wywołany program pomocniczy `%s' dowiązanie symboliczne za dużo opcji etykietowania plików obiekt w pamięci z określeniem typu dziwny plik zapis nieudany 