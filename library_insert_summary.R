write("Results from run begun on:","library_insert_summary.log",append=TRUE)
write(format(Sys.time(),usetz = TRUE),"library_insert_summary.log",append=TRUE)
write("","library_insert_summary.log",append=TRUE)

library(readr)
library(dplyr)
library(purrr)

list_of_files <- read.table("tab_files.txt",stringsAsFactors=FALSE)

# reading in the tab files
combined_table <- map_df(list_of_files[,], read_tsv, col_names = FALSE)

# logging whether reads map to the same scaffold or not
combined_table <- mutate(combined_table, same_scaffold = ifelse(X1==X4, "Same", "Different"))

# Summarizing the number of library pairs found on the same scaffold or not
write("Number of read pairs found on same or different scaffolds:","library_insert_summary.log",append=TRUE)
write_tsv(count(combined_table, same_scaffold),"library_insert_summary.log",append=TRUE)
write("","library_insert_summary.log",append=TRUE)

# Of those found on the same scaffold, getting the internal insert size between the reads
combined_table <- filter(combined_table, same_scaffold=="Same")
combined_table <- mutate(combined_table, insert_size = pmin(abs(X2-X5),abs(X2-X6),abs(X3-X5),abs(X3-X6)))

write("For read pairs found on the same scaffold...","library_insert_summary.log",append=TRUE)
write(paste("The minimum insert size (bp) observed was:",summarise(combined_table,min(insert_size))),"library_insert_summary.log",append=TRUE)
write(paste("The maximum insert size (bp) observed was:",summarise(combined_table,max(insert_size))),"library_insert_summary.log",append=TRUE)
write(paste("The mean insert size (bp) observed was:",summarise(combined_table,mean(insert_size))),"library_insert_summary.log",append=TRUE)
write(paste("The standard deviation of insert size (bp) was:",summarise(combined_table,sd(insert_size))),"library_insert_summary.log",append=TRUE)
write(paste("The median insert size (bp) observed was:",summarise(combined_table,median(insert_size))),"library_insert_summary.log",append=TRUE)
write("","library_insert_summary.log",append=TRUE)

write("Length distribution of insert sizes for read pairs found on same scaffold:","library_insert_summary.log",append=TRUE)
check <- hist(as.numeric(as.matrix(select(combined_table,insert_size))))
write.table((cbind(c("bp",check$breaks),c("count",check$counts,"NA"))),"library_insert_summary.log",append=TRUE,quote=FALSE,col.names=FALSE,row.names=FALSE)
