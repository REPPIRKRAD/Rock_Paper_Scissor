#Rock Paper Scissor
RPS <- function(){
#Intro
  cat("Hello! welcome to a game called Rock Paper Scissor.\n")
  name <- readline("What's your name?: ")
  cat("Cool!", name, "\nDo you Wanna play game?")
  
    start_game <- as.numeric(readline("Yes/No: [1] Yes, [2] No: "))

  
  hands <- c("Rock", "Paper", "Scissors", "Quit")
  game_play <- TRUE
  result <- list(win=0, lose=0, tie=0)
  
  if(start_game == 1){
    end_intro <- readline("Let's begin our game!!!\n")
    Add_1 <- readline("Who'd like to start?")
    add_2 <- readline("Of course, It's you!\n")
#game play     
    while (game_play){
      user_turn <- as.numeric(readline("It's Your turn: [1] Rock, [2] Paper, [3] Scissors, [4] Quit:"))
      user_turn <- hands[user_turn]
      bot_turn <- sample(hands[1:3], 1)
      cat("\nYou chose:", user_turn, "\nMy turn:", bot_turn)
#N/A input
      if(is.na(user_turn) || user_turn == ''){
      cat("\nYou suppose to choose 1 number from this list, try again!")
#win  
      } else if (
        (user_turn == "Rock" & bot_turn == "Scissors") |
        (user_turn == "Paper" & bot_turn == "Rock") |
        (user_turn == "Scissors" & bot_turn == "Paper")
      ){
        result$win <- result$win + 1
        cat("\nCongrats, you win!")
#tie
      } else if (user_turn == bot_turn){
        result$tie <- result$tie + 1
        cat("\nGreat minds think alike ;)")
#Quit while playing
      } else if (user_turn == "Quit") {
        game_play <- FALSE 
        cat("\n+++++++++++++++++++++++++++++++++++++++++++++++++++++") 
        cat("\nLet's see your game results (win/lose/tie):", result[[1]], result[[2]], result[[3]])
        cat("\n+++++++++++++++++++++++++++++++++++++++++++++++++++++")
        cat("\nGG!", name, "Don't you think so?\n")
        cat("\nAnyways, Thanks for playing. Bye~")
#lose
      } else {
        result$lose <- result$lose + 1
        cat("\nWhat a shame! You lose :)") 
      }
}
#Quit before start   
    
  }else if(start_game == 2){
    cat("Ok :(", name, "\n See you again, challenger")
}
}

RPS()