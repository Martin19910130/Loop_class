##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##          Functions for the final R day
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## I install a few packages for them
for(x in "crayon")
{
  if(!require(x, character.only = T))
    install.packages("crayon")
  library(crayon)
}
rm("x")

## See if packages are installed
install_check <- function(x){
  # extract all installed package names
  installed_pkgs <- x$Package
  
  # check if both openxlsx and tidyverse are installed
  if(all(c("openxlsx", "tidyverse") %in% installed_pkgs)){
    return("Great, both packages are installed. Continue running the next line")
  } else {
    return("Either one or both packages are missing. Please install them")
  }
  
}

## Check the environment and see what packages are loaded
env_check <- function(){
  # 1. List objects in the global environment
  env_objs <- ls(envir = .GlobalEnv)
  
  # 2. List currently loaded packages
  loaded_pkgs <- .packages()
  
  # 3. Packages you care about
  target_pkgs <- c("openxlsx", "tidyverse")
  
  # Output objects
  cat("=== Objects in Global Environment ===\n")
  if(length(env_objs) == 0){
    cat("No objects in the global environment.\n")
  } else {
    print(env_objs)
  }
  
  # Output loaded packages
  cat("\n=== Loaded Packages ===\n")
  print(loaded_pkgs)
  
  # Check your specific packages
  cat("\n=== Package Check (openxlsx & tidyverse) ===\n")
  missing <- setdiff(target_pkgs, loaded_pkgs)
  if(length(missing) == 0){
    cat("✅ Both openxlsx and tidyverse are loaded.\n")
  } else {
    cat("⚠️ Missing packages:", paste(missing, collapse = ", "), "\n")
  }
}

## Check if they suceeded in making the column numeric without losing info
skill_check2 <- function(x)
{
  if(is.character(x$thorax))
    cat("Are you sure you full filled task 4", 
        bold("and"), "task 5? I would not ask if you did.")
  if(is.na(x[15, 1]))
    cat(" You did change something, unfortunatly you created an NA and lost information.\n",
        "Sorry,", bold("load"), "the data again to R and try again.\n",
        "That means rerun the read.csv()")
  if(x[15, 1] == 0.84)
    cat("Yes! Great move on to the next task!")
}

## Check if they created a ID column with 1:124, I abuse that the mean is 62.5
skill_check3 <- function(x){
  # Check if ID column exists
  if(!"ID" %in% names(x)){
    cat("❌ No column named 'ID' found.\n")
    return()
  }
  
  # Check if ID column is numeric
  if(!is.numeric(x$ID)){
    cat("❌ The ID column is not numeric. Please fix it.\n")
    return()
  }
  
  # Check if IDs are exactly 1:124
  if(identical(sort(unique(x$ID)), 1:124)){
    cat("✅ Nice, your IDs are exactly 1 to 124. Please move on to the next task.\n")
  } else {
    cat("⚠️ Your IDs are not exactly 1 to 124. Please redo.\n")
  }
}

