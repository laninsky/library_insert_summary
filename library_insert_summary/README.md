# library_insert_summary
Using tab files generated from SSPACE, this script summarizes the distribution of insert sizes for your libraries based on read pairs  that fall on the same contig (and also gives the number that DON'T fall on the same contig). To run it, get your tab_files.txt file together (described below), save a copy of library_insert_summary.R to the same directory as tab_files.txt, and then run it by:
```
Rscript library_insert_summary.R
```
It will output a file (time/date stamped just in case you have multiple runs) called library_insert_summary.log. e.g.
```
Results from run begun on:
2018-08-21 16:13:42 NZST

Number of read pairs found on same or different contigs:
Different       8681037
Same    28543850

For read pairs found on the same contig...
The minimum insert size (bp) observed was: 0
The maximum insert size (bp) observed was: 858587
The mean insert size (bp) observed was: 7128.20806797261
The standard deviation of insert size (bp) was: 1939.75727719681
The median insert size (bp) observed was: 7151

Length distribution of insert sizes for read pairs found on same contig:
bp count
0 28543535
50000 220
1e+05 59
150000 18
2e+05 8
250000 1
3e+05 5
350000 1
4e+05 1
450000 0
5e+05 1
550000 0
6e+05 0
650000 0
7e+05 0
750000 0
8e+05 0
850000 1
9e+05 NA
```

# tab_files.txt
A list of the tab files corresponding to the library you want to summarize e.g.
```
mod_H3Y32BCXX-1691-01-7-2_L001mp_trimmed_A.tab
mod_H3Y32BCXX-1691-01-7-2_L001mp_trimmed_B.tab
mod_H3Y32BCXX-1691-01-7-2_L001mp_trimmed_C.tab
mod_H3Y32BCXX-1691-01-7-2_L002mp_trimmed_A.tab
mod_H3Y32BCXX-1691-01-7-2_L002mp_trimmed_B.tab
mod_H3Y32BCXX-1691-01-7-2_L002mp_trimmed_C.tab
```
The tab files themselves should be formatted without header rows and tab delimited e.g.
```
flattened_line_12263    35044   35228   flattened_line_12263    26895   26720
flattened_line_3592     27176   27031   flattened_line_3592     33474   33648
```

## Version history
v0.0 First published in Robin TBD

This script wouldn't be possible without:  
R: R Core Team. 2015. R: A language and environment for statistical computing. URL http://www.R-project.org/. R Foundation for Statistical Computing, Vienna, Austria. https://www.r-project.org/
Wickham, H., Hester, J. and Francois, R.,Readr: Read rectangular text data.  
Wickham, H., Francois, R., Henry, L. and Müller, K., dplyr: A grammar of data manipulation.  
Henry, L. and Wickham, H., 2017. Functional programming tools


