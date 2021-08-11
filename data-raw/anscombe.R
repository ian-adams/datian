## code to prepare `DATASET` dataset goes here

# The data-raw/ folder is like the pantry (?) of our sushi restaurant– we can put anything we want in here, 
# and it won’t directly impact our final package.

# At the end of this script, include the following line, replacing DATASET with your own cleaned dataset.

# use_data(DATASET, overwrite = TRUE)

## Script to add data

anscombe_set1 <- anscombe[c(1, 5)] # create toy dataset

use_data(anscombe_set1, overwrite = TRUE) # this creates the /data .rda file 
