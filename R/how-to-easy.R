# Basic walk through
# from https://rstudio4edu.github.io/rstudio4edu-book/data-pkg.html

# 1. Save your raw .csv file to your data-raw/ folder. 
# 2. Make a new .R script (again, manually saving to the data-raw/ folder) and name the .R script something like <your-data>_load.R.
# 3. In this data-raw/ script, read in your raw .csv file and do any data tidying and cleaning
# 4. Once you’ve got your dataset the way you want it within <your-data>_load.R, run usethis::use_data() 
#    as the last line in the script to export the data as an .rda file to the data/ folder
#    example LAST LINE (creates accessible data for the /data folder)

# usethis::use_data(DATASET, overwrite = TRUE)

# 5. Trust but verify that your data set made it in your package by loading the package 
#    (Build pane > Click More > Load All or in the console using devtools::load_all()). And then call your dataset!
# 6. Confirm it worked - call data with name of rds
#     example:

# anscombe_set1


# 7. Document the dataset (see URL above)

# 8. open up and edit the DESCRIPTION file to fill in the author (your) info 
#    and other descriptive info about the package.
