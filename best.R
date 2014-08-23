best <- function(state, outcome) {
  ## Read outcome data
  setwd("C:/git/ProgrammingAssignment3")
  data <-read.csv("outcome-of-care-measures.csv") #start w/out colClasses="character"
 
  ## Check that state and outcome are valid
  if (sum(state == state.abb) < 1) { stop("invalid state")}
  else { print("OK state")}
  ocname <- c("heart attack", "heart failure","pneumonia")
  if (sum(outcome == ocname) < 1) {stop("invalid outcome")}
  else {print("OK outcome")}

  ## Return hospital name in that state with lowest 30-day death
  ## rate
}