# To load package
# remotes::install_github("ian-adams/datian")

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


# TLDR
# Here’s how you put custom data in a package:
#   
#   In a GitHub-connected RStudio project, run create_package(getwd())
# usethis::use_data_raw() makes data-raw/. In here, put your .csv and a manually-created dataset_load.R script.
# In dataset_load.R, read in the .csv and do data-clean up.
# Also in dataset_load.R, run usethis::use_data(<your-dataset>, overwrite = TRUE) to export an .rda to data/.
# Run usethis::use_r("<your-dataset>"). Manually insert Roxygen comments.
# Edit DESCRIPTION. Include a LICENSE file.
# Run usethis::use_package_doc() to document the whole package.
# Keep the package-level .R script open and run usethis::use_tibble() for data as tibbles.
# Run devtools::document() to make all documentation concrete.
# Check your package with devtools::check(document=FALSE).
# Go to Build > Install and Restart !
#   Push to GitHub and have folks install with remotes::install_github("<your-repo>/<your package>").
