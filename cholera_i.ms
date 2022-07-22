.PS L
scale=3.0
.po 0.0c
.ps 5
.vs 10
Y: arrow up 20
box invis "Words" rjust with .sw at Y.n
X: arrow right 19 from Y.s
box invis "Year" with .ne at X.e
Week0:box invis " " with .n at X.se
Week1848:box invis "1848" wid 1.5 with .sw at Week0.se
sh { sort yearly/1848.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1848.text_shit}
	copy "yearly/1848.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1849:box invis "1849" wid 1.5 with .sw at Week1848.se
sh { sort yearly/1849.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1849.text_shit}
	copy "yearly/1849.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1850:box invis "1850" wid 1.5 with .sw at Week1849.se
sh { sort yearly/1850.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1850.text_shit}
	copy "yearly/1850.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1851:box invis "1851" wid 1.5 with .sw at Week1850.se
sh { sort yearly/1851.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1851.text_shit}
	copy "yearly/1851.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1852:box invis "1852" wid 1.5 with .sw at Week1851.se
sh { sort yearly/1852.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1852.text_shit}
	copy "yearly/1852.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1853:box invis "1853" wid 1.5 with .sw at Week1852.se
sh { sort yearly/1853.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1853.text_shit}
	copy "yearly/1853.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1854:box invis "1854" wid 1.5 with .sw at Week1853.se
sh { sort yearly/1854.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1854.text_shit}
	copy "yearly/1854.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1855:box invis "1855" wid 1.5 with .sw at Week1854.se
sh { sort yearly/1855.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1855.text_shit}
	copy "yearly/1855.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1856:box invis "1856" wid 1.5 with .sw at Week1855.se
sh { sort yearly/1856.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1856.text_shit}
	copy "yearly/1856.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1857:box invis "1857" wid 1.5 with .sw at Week1856.se
sh { sort yearly/1857.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1857.text_shit}
	copy "yearly/1857.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1858:box invis "1858" wid 1.5 with .sw at Week1857.se
sh { sort yearly/1858.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearly/1858.text_shit}
	copy "yearly/1858.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
.PE
