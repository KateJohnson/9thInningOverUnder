Home_team_score <- 3
Away_team_score <- 3

Iterations <- 1000

results <- data.frame(Sim=1:Iterations, Under=0, Over=0)

for (i in 1:nrow(results)) {
# Away score  
  rnum_away <- sample(1:100000,1)
    if(rnum_away %in% c(73200:87850)){
    Away_team_score <- 1
  } else if (rnum_away %in% c(87851:94522)) {
    Away_team_score <- 2
  } else if (rnum_away %in% c(94523:97592)) {
    Away_team_score <- 3
  } else if (rnum_away %in% c(97593:98964)) {
    Away_team_score <- 4
  } else if (rnum_away %in% c(98965:99545)) {
    Away_team_score <- 5
  } else if (rnum_away %in% c(99546:99800)) {
    Away_team_score <- 6
  } else if (rnum_away %in% c(99801:99900)) {
    Away_team_score <- 7
  } else if (rnum_away %in% c(99901:100000)) {
    Away_team_score <- 8
  } else {
    Away_team_score <- 0
  }
# Home score    
  rnum_home <- sample(1:100000,1)
  if(rnum_home %in% c(73200:87850)){
  home_team_score <- 1
  } else if (rnum_home %in% c(87851:94522)) {
  home_team_score <- 2
  } else if (rnum_home %in% c(94523:97592)) {
  home_team_score <- 3
  } else if (rnum_home %in% c(97593:98964)) {
  home_team_score <- 4
  } else if (rnum_home %in% c(98965:99545)) {
  home_team_score <- 5
  } else if (rnum_home %in% c(99546:99800)) {
  home_team_score <- 6
  } else if (rnum_home %in% c(99801:99900)) {
  home_team_score <- 7
  } else if (rnum_home %in% c(99901:100000)) {
  home_team_score <- 8
  } else {
  home_team_score <- 0
  }
# Over/Under  
  if(Away_team_score + Home_team_score < 7.5){
    results$Under[i] <- 1
  } else if(Away_team_score + Home_team_score > 7.5) {
    results$Over[i] <- 1
  } else if (Away_team_score + Home_team_score == 7.5) {
    break
  }
}

write.csv(results, "/Users/katejohnson/Desktop/9thInningOverUnder/Simulation_Results.csv")
