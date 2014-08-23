best <- function(state, outcome) {
  ## Read outcome data
  setwd("C:/git/ProgrammingAssignment3")
  d <-read.csv("outcome-of-care-measures.csv",colClasses="character") #start w/out colClasses="character"
  
  ## Check that state and outcome are valid
  if (sum(state == unique(d[,7])) != 1) { stop("invalid state")}
  #else { print("OK state")}
  ocname <- c("heart attack" = 11, "heart failure" =17 ,"pneumonia" = 23)
  
  if (sum(outcome == names(ocname)) != 1) {stop("invalid outcome")}
  #else {print("OK outcome")}

  ## Return hospital name in that state with lowest 30-day death
  ## rate
  c <- as.numeric(ocname[outcome])
  s <- d[,c]
  s <-as.numeric(s)
  k <- s==min(s)
  return()
}