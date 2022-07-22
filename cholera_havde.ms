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
Week1849:box invis "1849" wid 1.5 with .sw at Week0.se
sh { sort yearlyhavde/1849.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearlyhavde/1849.text_shit}
	copy "yearlyhavde/1849.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1853:box invis "1853" wid 1.5 with .sw at Week1849.se
sh { sort yearlyhavde/1853.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearlyhavde/1853.text_shit}
	copy "yearlyhavde/1853.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1854:box invis "1854" wid 1.5 with .sw at Week1853.se
sh { sort yearlyhavde/1854.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearlyhavde/1854.text_shit}
	copy "yearlyhavde/1854.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1855:box invis "1855" wid 1.5 with .sw at Week1854.se
sh { sort yearlyhavde/1855.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearlyhavde/1855.text_shit}
	copy "yearlyhavde/1855.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
Week1856:box invis "1856" wid 1.5 with .sw at Week1855.se
sh { sort yearlyhavde/1856.text | uniq -c | sort -n | tail -45 |perl -ne 's/^\s+\d\s+//;print;'  > yearlyhavde/1856.text_shit}
	copy "yearlyhavde/1856.text_shit" thru { box invis "$1 $2 $3" ht 0.45   with .s at last box .n}
.PE
