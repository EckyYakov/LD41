// Check to see if any win or lose conditions have been satisfied

// Player has acheived win-score
if(global.player_score >= win_score){
	play_sound = true;
	// Do a win transition screen and move on to next level
	fadeTransition(rm_level_2, false);
}