// Check to see if any win or lose conditions have been satisfied

// Player has acheived win-score
if(global.player_score >= win_score){
	// Do a win transition screen and move on to next level
	fadeTransition(rm_level_5, false);
}