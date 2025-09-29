##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##          Questions and answers for the loop class
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rm(list = ls())
gc()

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##          Question 1, Simple for loop----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Question_1 <- function() {
  cat(
    "What happens if I change the example as follows:\n",
    bold("\n     for(i in 20:60)\n\n"),
    "a) Nothing changes as I still define i\n",
    "b) I will display 0.333 as 20/60 is 0.3333\n",
    "c) The loop will now print the number range 20-60\n",
    "d) How am I supposed to know? I just run it\n"
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
    cat(bold("Nailed it!"))
  if(answer %in% c("d", "D", "d)", "D)"))
    cat("Well, fair enough...")
  else
    cat("Your input does not match any expected input.\n",
        "Please try again with a valid input (for example a) or b))")
}  
