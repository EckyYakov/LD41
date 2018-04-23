/// @description Insert description here
var mouse_pressed = mouse_check_button_pressed(mb_any);
var key_pressed = keyboard_check_pressed(vk_anykey);


//Check to see what story sprite to display
//Display it for x amount of seconds
//Fade transition to main menu when all stories have been displayed.
if(mouse_pressed || key_pressed){
	if(count < str_length) count = str_length;
	else fadeTransition(rm_level_1, false);
}

sub_string = string_copy(full_string, 0, floor(count));



if(count >= str_length + 240){
	fadeTransition(rm_level_1, false);
}
count += rate;

