##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##          Questions and answers for the loop class
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rm(list = ls())
gc()

library(crayon)
library(dplyr)

## List of students
students <- c("Pinja", "Vikke", "Marjaana", "Taavetti", "Niko", "Nicolina", 
              "Veera", "Milla", "Konsta", "Nette", "Lempi", "Sini", "Laura", 
              "Andreas", "Veera", "Mikko", "Jessica", "Kaisla", "Ida", 
              "Netta", "Nea", "Helena", "Saara", "Noora", "Anuka")

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##          Question 1, Simple for loop----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Question_1 <- function() {
  cat(
    "What happens if I change the example as follows:\n\n",
    bold("     for(i in 20:60)\n\n"),
    "a) Nothing changes as I still define. i\n",
    "b) I will display 0.333 as 20/60 is 0.3333.\n",
    "c) The loop will now print the number range 20-60.\n",
    "d) How am I supposed to know? I just run it.\n"
  )
}

## Answer 1, Simple for loop
Answer_1 <- function(answer = "K") {
  if(answer %in% c("a", "A", "a)", "A)"))
    cat(bold("Wrong\n"), 
        "Yes you do define i, but you give it a different number range.\n", 
        "Try again. 😎")
  if(answer %in% c("b", "B", "b)", "B)"))
    cat(bold("Wrong\n"), 
        "In R diviation is done with / this operator sign.\n", 
        "If you would write it like", bold("for(i in 20/60\n"), 
        "You would indeed get 0.3333 as output\n.",
        "Try again. 😎")
  if(answer %in% c("c", "C", "c)", "C)"))
    cat(bold("Nailed it! 🎉"))
  if(answer %in% c("d", "D", "d)", "D)"))
    cat("Well, fair enough...")
  else
    cat("Your input does not match any expected input.\n",
        "Please try again with a valid input (for example a) or b))")
}  

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##      Question 2 -----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Question_2 <- function(){
  cat("What happens if I run the following code:\n\n", 
      bold("   for(r_class in students)
           print(paste(r_class, loves R))\n\n"),
      "You can see what is stored in the vector students by running:\n", 
      bold("\n                    students\n\n"), 
      "a) Every studend expresses love for R.\n", 
      "b) I hate R!\n", 
      "c) It prints six times r_class.\n",
      "d) It will result in an error.\n")
}

Answer_2 <- function(answer = "O"){
  if(answer %in% c("a)", "A)", "a", "A"))
    cat(" That was a little bit mean. Technically you are correct,\n",
        "however the loop will break because of:", 
        bold("loves R.\n"),
        "R can not find anything that matches:",
        bold("loves R\n"), 
        "as it needs to be a character in order to work.\n",
        "So this code will actually return an error.\n",
        "In anyway you still grasp how loops work.")
  if(answer %in% c("b)", "B)", "b", "B"))
    cat("😢 We are heart broken.\n", 
        "Now might be a good time to tell you those answers are stored and visible for us after this class.\n", 
        "Thank you for your honesty... we remember your name.\n", 
        "This was a joke... No data is stored and we can not see your answers.")
  if(answer %in% c("c)", "C)", "c", "C"))
    cat(cat(bold("Wrong\n"), 
                "No, the r_class operator is actually replaced by something each iteration.\n", 
                "Try again. 😎"))
  if(answer %in% c("d)", "D)", "d", "D"))
    cat(bold("Nailed it! 🎉"))
  else
    cat("Your input does not match any expected input.\n",
        "Please try again with a valid input (for example a) or b))")
    
}

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##      3. Penguin prep
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
penguins_altered <- palmerpenguins::penguins %>% 
  mutate(bill_length_mm = case_when(sex == "male" & island == "Torgersen" ~ 
                                    bill_length_mm/25.4,
                                    TRUE ~ bill_length_mm))




