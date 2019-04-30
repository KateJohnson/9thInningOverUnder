Home_team_score <- 3
Away_team_score <- 3
Under <- 0
Over <- 0 


for (i in 1:10){
  rnum_away <- sample(1:100000,1)
  if(rnum_away %in% c(73200:87850)){
    Away_team_score <- 1
  } else if (rnum_away %in% c(87850:94522)) {
    Away_team_score <- 2
  } else {
    Away_team_score <- 3
  }
  rnum_home <- sample(1:100000,1)
  if(rnum_home %in% c(73200:87850)){
    Home_team_score <- 1
  } else if (rnum_home %in% c(87850:94522)) {
    Home_team_score <- 2
  } else {
    Home_team_score <- 3
  }
  if(Away_team_score + Home_team_score < 7.5){
    Under <- 1
  } else {
    Over <- 1
  }
}