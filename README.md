# traces-of-historical-plagues

The take-home message is in the PDF with the odd name [bar_diagram.pdf](bar_diagram.pdf)

Everything here is as is, thoughts came and were investigated,
rejected or included in the small note.

The data needed for regenerating everything from scratch could be
retrieved by the script GET.sh

```
#!/bin/sh

PREFIX="https://loar.kb.dk/bitstream/handle/1902/282/"
SUFFIX="?sequence=1&isAllowed=y"

for i in $(seq 1849 1859); do
    file="artikler_$i.csv";
    op="GET '$PREFIX$file$SUFFIX'>$file"
    echo "$op";
done
```


