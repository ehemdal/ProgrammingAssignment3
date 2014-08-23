best <- function(state, outcome) {
  ## Read outcome data
  setwd("C:/git/ProgrammingAssignment3")
  outcome <-read.csv("outcome-of-care-measures.csv") #start w/out colClasses="character"
 
  ## Check that state and outcome are valid
  if (sum(state == state.abb) < 1) { stop("invalid state")}
  else { print("OK")}
  ## Return hospital name in that state with lowest 30-day death
  ## rate
}