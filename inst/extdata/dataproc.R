x <- read.csv("~/repos/paired/inst/extdata/aru-join-table_2016-AUG-22.csv")
str(x)

levels(x$TimeInterval)[levels(x$TimeInterval) == ""] <- "UNK"
levels(x$Interval)[levels(x$Interval) == "0-1 min"] <- "0-3 min"
levels(x$Interval)[levels(x$Interval) == "2-3 min"] <- "0-3 min"
levels(x$Interval)[levels(x$Interval) == "8-9 min"] <- "5-10 min"
table(x$TimeInterval,x$Interval)

x <- droplevels(x)
paired <- x

save(paired, file="~/repos/paired/data/paired.rda")
