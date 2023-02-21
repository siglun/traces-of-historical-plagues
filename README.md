# traces-of-historical-plagues

The take-home message is in the PDF with the odd name [paper_only.pdf](paper_only.pdf). There is another version which also contain a some ten pages with bar diagrams [bar_diagram.pdf](bar_diagram.pdf).

Everything here is as is, thoughts came and were investigated,
rejected or included in the small note.

The data needed for regenerating everything from scratch could be
retrieved by the script GET.sh. Run it as

```
./GET.sh | /bin/sh
```

which will lead to the download of artikler_1846.csv ... artikler_1860.csv

The three scripts

```
parse_article_files
count_words.sh 
count_words_weekly.sh 
```
Tokenizes and aggregates text in text files in the weekly directory. 
Extracts data for Figure 1 and Figure 2.

```
make_trigrams.sh
```

Makes bigrams and trigrams for weekly extracts in the directories with the same names

```
make_n-gram_extracts.sh
```

Make extracts with the fifty most frequent bigrams, writing them in the bigrams directory with the suffic .extract.
Finally build the paper using the command

```
build.sh
```





