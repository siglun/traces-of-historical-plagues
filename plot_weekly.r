#!/usr/bin/Rscript


# week olera kolera cholera epidemi pest farsot

series <- read.table(file = "weekly_counts.txt",
                     col.names = c("week","olera","kolera","cholera","epidemi","pest","farsot"),
                     sep = "",
                     quote = "\"",
                     dec = ".",
                     fill = TRUE,
                     comment.char = "#")


plot(x = series$week,series$olera)
