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
  if(mean(x$ID) != 62.5)
    cat("You do not have ID's from 1 to 124. Please redo!")
  else if(mean(x$ID) == 62.5)
    cat("Nice, please move on to the next task.")
  
  else
    cat("I can not say what is wrong but something is off, please ask us.\n", 
        "This message also shows automatically if the ID column is a character column.")
}

