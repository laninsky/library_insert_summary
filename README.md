# library_insert_summary
Using tab files generated from SSPACE, this script summarizes the distribution of insert sizes for your libraries for those that fall on the same scaffold (and the proportion that fall on the same scaffold).

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
