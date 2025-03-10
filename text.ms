.TL
.hy 0
.nf
The Copenhagen cholera epidemic 1853 in contemporary
Danish newspaper prose: Some back-of-an-envelope calculations
.AU
Sigfrid Lundberg
.AI
The Royal Danish Library
.AB
.LP
.ps 10
.vs 12
A tentative analysis of how the cholera epidemic 1853 is covered in contemporary Danish newspapers.
Words related to the epidemics increases rapidly in frequency at the outbreaks,
but decreases much more slowly.
Obviously the public was not prepared for the appearance,
but the discussions of the outbreak continues several years after.
The temporal distribution of trigrams containing locations (like \fIcholera \f(CRin\fI place name\fR ) and temporal info (like \fIcholera\fP \f(CRer\fP, \f(CRhar\fP or \f(CRhavde\fP, i.e., is, has and had followed by some word, often an adjective) follow the outbreak as well.
.AE
.SH
Introduction
.LP
Inspired by the fact that we were all hiding away from the Covid-19 2020 \(en 2021,
I wanted to take a closer look at some other epidemic.
My hope was to find patterns of change in language use mirroring sentiments and attitudes expressed in words, bigrams and trigrams and frequency distributions.
I started to write this May 2020 and completed it about two years later. My original idea was to analyze the Spanish flu 1918 \(en 1919.\**
.FS
I have a personal relation to that outbreak.
My grandfather died in it when my father was three years old and this affected everything that followed in my family's history.
.FE
We have as yet little freely available data in our public corpora from that period, so I turned my attention to the Cholera epidemic in Copenhagen 1853.
At the time, Copenhagen had around 130.000\**
.FS
.pdfhref W -D http://www2.kb.dk/udstillinger/medhist/kolera/koebenhavn1853.htm http://www2.kb.dk/udstillinger/medhist/kolera/koebenhavn1853.htm
.FE
inhabitants out of which 7.219 were diagnosed as having the disease out of which 4.737 (56,7%) died.
Christian Molbech writes in a letter to Christian Knud Frederik Molbech, the July 3, 1853:
.QP
.ig
Allerede den 12te Juni (altsaa Dagen f�r Rigsdagen aabnedes, den
uheldige 13de Dag i Juni) indtraf det 1ste Cholera-Tilf�lde \(em et ungt
Menneske af Holmens Nyboders Folk, som l�ngere Tid havde arbeidet paa
en Mudderpram. Han kom sig, og blev allerede den 25de udskrevet af
Hospitalet. I hele 14 Dage var man i Stand til at d�lge de meget
sparsomme Sygdomstilf�lde.
..
.ps 10
.vs 12
The first cholera case was found as early as the 12th June (i.e., the
day before the opening of the parliament in June) \(em a young man
from the area close to the naval barracks, who for quite some time had
worked on a dredge. He has recovered, and was released from hospital
the 25th. The authorities were able to conceal the earliest few cases
for a fortnight.\**
.FS
Translated by the author.
.pdfhref W -D https://bit.ly/3cOzlAg https://bit.ly/3cOzlAg
.\" https://danmarksbreve.kb.dk/catalog/%2Fletter_books%2F001991706%2F001991706_000-L0019917060000027
.FE
.LP
The epidemic spread from Copenhagen to other areas. Outside the capital 1.951 fatal cases were reported.\**
.FS
.pdfhref W -D https://da.wikipedia.org/wiki/Koleraepidemien_i_K%C3%B8benhavn_1853 https://da.wikipedia.org/wiki/Koleraepidemien_i_K%C3%B8benhavn_1853
.FE
.PP
The spread of an infectious disease does not occur in a vacuum; the Copenhagen epidemic is a part of the cholera pandemic (1846-1860)\**
.FS
.pdfhref W -D https://en.wikipedia.org/wiki/1846%E2%80%931860_cholera_pandemic https://en.wikipedia.org/wiki/1846%E2%80%931860_cholera_pandemic
.FE
which is the third out of seven global outbreaks.\**
.FS
.pdfhref W -D https://en.wikipedia.org/wiki/Cholera_outbreaks_and_pandemics https://en.wikipedia.org/wiki/Cholera_outbreaks_and_pandemics
.FE
.PP
Here I present some data analyses: (1) The number of newspaper articles mentioning \fIepidemi, pest, kolera\fP and \fIcholera\fP through the period 1846 to 1860 (Figure 1).
(2) I repeated that analysis with the frequencies of words rather than articles in weekly aggregations of texts.
(3) Finally I visualize a set of trigrams extracted from the corpus.
.PP
Everything you need to check or repeat or go further in these analyses is available on the Internet,
including the scripts I have used in my calculations.\**
.FS
.pdfhref W -D https://github.com/siglun/traces-of-historical-plagues https://github.com/siglun/traces-of-historical-plagues
.FE
.IP
.PDFPIC "articles_by_year.pdf"  12c
.ps 10
.vs 12
Figure 1. Number of newspaper pages mentioning any of the words \fIkolera, cholera, epidemi\fP or \fIpest\fP.
.SH
The data
.LP
The data was retrieved from Royal Danish Library's LOAR Repository.\** It comes in \f(CRCSV\fP format, aggregated to yearly chunks.
Each line is basically corresponding to one page of text in a newspaper.
.FS
Newspapers from Royal Danish Library
.pdfhref W -D https://loar.kb.dk/handle/1902/157 https://loar.kb.dk/handle/1902/157
.FE
.SH
Some low-hanging fruits
.LP
Using the Unix \f(CRgrep\fP command makes it easy to count the number of pages containing a given word.
So the graph in Figure 1, is simple plot of what is extracted using the shell script in Figure 2.
.ID
\f(CR#!/bin/sh
echo "#year kolera cholera epidemi pest farsot" 
for file in artikler*
do
    year=$(echo $file| tr -d '[:alpha:][:punct:]')
    kolera=$(grep -i kolera $file | wc -l)
    cholera=$(grep -i cholera $file | wc -l)
    epidemi=$(grep -i epidemi $file | wc -l)
    pest=$(grep -i pest $file | wc -l)
    farsot=$(grep -i farsot $file | wc -l)
    echo "$year $kolera $cholera $epidemi $pest $farsot" 
done\fP
.DE
.IP
.ps 10
.vs 12
Figure 2. Script for extracting the data for plotting Figure 1. See this paper's Github repository mentioned in the main text.
.LP
Three things spring to my mind:
(1) The obvious one. People wrote about this cholera outbreak in Copenhagen 1853.
They wrote a lot.
(2) The effect on the public discourse of the epidemic lasted for years and it did not return to pre-epidemic levels that decade.
You see this on the shape of the curves;
the incidence of words related to the epidemic rise rapidly from very low levels and then fade out slowly.
The fact is that the article count in Figure 1 never really decreases to counts before the cholera outbreak.
Almost certainly the people felt like we do in relation to the Covid-19 epidemic:
Will it ever be the same again? If there will be new waves, will we survive?
(3) People hadn't settled on how to spell the name of the disease yet, cholera and kolera.
(4) The word \fIpest\fP seems to be widely used in Danish at the time,
possibly as something annoying but also as epidemic disease in general.
.PP
I also made another analysis, where I aggregated text by week, and used text tokenized by word, see Figure 3.
The week numbering starts with 1 at 1846-01-01 and ends at 1860-12-31 with week 781.
The huge peak in the graph starts at 1853-06-24 at week 389 (compare with the letter quoted above).
It reaches its highest point at the end of July, 1853-07-29, week 395.
From what I can tell it continues until the beginning of October, but the mentions of \fIcholera\fP in the corpus is higher than the pre-outbreak into March the following year, week 425.
There is a discrepancy between the two analyses,
in that the article level analyses (Figure 1) implies a longer effect of the outbreak on the discourse than the per word one (Figure 3.)
.IP
.PDFPIC "words_by_week.pdf"  12c
.ps 10
.vs 12
Figure 3. Here I use tokenized text, i.e., there is only one word per line, and I also aggregated the texts by week.
.SH
Trigrams
.LP
N-grams generation is not an end in itself.
They are a starting point for many kinds of statistical and machine learning methods and applications in natural language processing.\**
.FS
.pdfhref W -D https://en.wikipedia.org/wiki/N-gram https://en.wikipedia.org/wiki/N-gram
.FE
You extract n-grams by "sliding" through your tokenized text word by word, and sample n words.
Bigrams and trigrams are special cases where you sample two or three words.
I am a great fan of simplicity and elegance and hence I love Kenneth Ward Church's tool box which he described in his wonderful classic \fIUnix for Poets\fP\** where you are given methods to do a text analyses using simple tools that you find on all Unix/Linux machines.
.FS
.pdfhref W -D http://doc.cat-v.org/unix/for-poets/ http://doc.cat-v.org/unix/for-poets/
.FE
Here are some examples of trigrams containg the word \fIhovedstaden\fP across the weeks, i.e., the capital (in decreasing frequency):
.ID
\f(CRcholera i hovedstaden
hovedstaden bortriver cholera
hovedstaden er cholera
hovedstaden af cholera
hovedstaden forekomne cholera
choleraepidemien i hovedstaden
epidemien i hovedstaden
hovedstaden udbrudte cholera\fP
.DE
For some reason, I don't understand why, the actual name of the city Copenhagen, K�benhavn (or whatever spelling) seem to occur rarely in comparison with the word hovedstaden (\(lqthe capital\(rq), which is frequent, in particular 1853.
Here is another sequence (containing \fIcholera er\fP) and sampled such that they begin with that phrase:
.ID
\f(CRcholera er af
cholera er afgaaet
cholera er aftagen
cholera er aldeles
cholera er alter
cholera er aner
cholera er at
cholera er atter
cholera er begjeert
cholera erboldes som
cholera er borlfalden
cholera er bortfalden
cholera er cadetfiibs
cholera ere altsaa
cholera ere berovede\fP
.DE
.LP
As you can see, our newspaper text corpora are not proofread. It is OCR from gothic script.
Figure 4-7 are visualizations of the frequencies of various trigrams.
.IP 1.
Trigrams starting with \fIkolera i\fP or \fIcholera i\fP (\(lqcholera in\(rq in English).
The third word is often a place name, such as \fIcholera i hovedstaden\fP (i.e., \(lqcholera in the capital\(rq).
There are other constructs like \fIcholera i begyndelsen\fP (i.e., \(lqcholera in the beginning\(rq).
Repetitions are excluded, so the heights of the bars are more measures of diversity rather than abundance.
See Figure 4.
.IP 2.
Trigrams starting with \fIkolera er\fP or \fIcholera er\fP (\(lqcholera\(rq followed by \(lqis\(rq) in English).
These are constructs like \fIcholera er udbrudt\fP (\(lqcholera is broken out\(rq),
\fIcholera er fra\fP (\(lqcholera is from\(rq) etc.
See Figure 5.
.IP 3.
Trigrams starting with \fIkolera har\fP or \fIcholera har\fP (\(lqcholera\(rq followed by \(lqhas\(rq in English).
The words following \fIhar\fP (i.e., \(lqhas\(rq) is similar to those follwing \(lqcholera is\(rq.
After all they are both conjugations of the same verb \fIhave\fP;
\(lqhas\(rq is still present tense just like \(lqis\(rq but the cholera has been going on for a while when using \(lqhas\(rq.
For instance, we have \fIcholera har hersket\fP (\(lqcholera has ruled\(rq) as opposed to the \(lqcholera is broken out\(rq as mentioned in point 2 above. See Figure 6.
.IP 4.
Finally, trigrams starting with \fIkolera havde\fP or \fIcholera havde\fP (\(lqcholera\(rq followed by \(lqhad\(rq) in English).
One example is \fIcholera havde vist\fP, i.e., \(lqcholera had shown\(rq.
There are only handful words following this past tense construct of the verb \fIhave\fP.
They only appear in five of the ten years I have in my time series.
Since the numbers are so low, I am hesitant to draw any conclusions upon the set of words here.
However, only one occurence of \fIcholera havde\fP is before 1853, in 1849.
The rest of them  are in 1853, 1854, 1855 and 1856 (See Figure 7).
.LP
The \fIcholera havde\fP constructs seem to be discussions on why things happened as they did in 1853 as in this text
.QP
.ps 10
.vs 12
Saavel paa St. Thomas som paa St. Croix vedligholdtes streng Karant�ne,
och intet Tilf�lde af \fBKolera havde vist\fP [authors emphasis] sig paa nogen av �erne.\**
.FS
.pdfhref W -D http://hdl.handle.net/109.3.1/uuid:dd96317c-bf59-463f-9e63-01ce718ae521 http://hdl.handle.net/109.3.1/uuid:dd96317c-bf59-463f-9e63-01ce718ae521
.FE
(On St. Thomas as well as on St. Croix there was stringent quarantine, and no cases were encountered on the islands.)
.PP
The author of the text can thus preclude the contacts with the Danish West Indies as a source of the disease.
The temporal distribution of the \fIcholera havde\fP constructs corroborates the conclusion above for the time series shown in Figures 1 and 3.
People were talking a lot about Cholera 1853 and many years thereafter, just as we do now in relation to Covid.
.bp
.IP
.\"DS L
.so cholera_i.ms
.\"DE
.ps 10
.vs 12
Figure 4.
Trigrams per year with the text beginning with \f(CRcholera i\fP.
The highest bar is truncated, in reality it is ten times higher in order to make it fit into the page.
I have also removed repetions.
.bp
.IP
.\"DS L
.so cholera_er.ms
.\"DE
.ps 10
.vs 12
Figure 5.
Trigrams per year with the text beginning with \f(CRcholera er\fP.
The highest bar is truncated in order to make it fit into the page.
I have also removed repetions.
.bp
.IP
.\"DS L
.so cholera_har.ms
.\"DE
.ps 10
.vs 12
Figure 6.
Trigrams per year with the text beginning with \f(CRcholera har\fP.
.bp
.IP
.\"DS L
.so cholera_havde.ms
.\"DE
.ps 10
.vs 12
Figure 7.
Trigrams per year with the text beginning with \f(CRcholera havde\fP.
.bp
.SH 
Lessons learned
.IP 1
My idea was that just inspection of the words in their context should give information about emotions or sentiments.
I suppose that this was just due to my naivete when it comes to languages, since I cannot really find anything of that kind.
.IP 2
The tools coming with a standard Linux distribution isn't as unicode compliant one would wish.
Some twenty years later, the nice utility \f(CRtr\fP is still not really UTF-8.
Neither is the GNU implementation of Brian Kernighans graphics language \f(CRpic\fP which I used for the bigrams.
.FS
.pdfhref W -D https://en.wikipedia.org/wiki/Pic_language https://en.wikipedia.org/wiki/Pic_language
.FE
.IP 3
There is another big problem connected with the use of our newspaper text corpora for computational linguisics.
The poor OCR quality.

