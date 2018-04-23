/// @description Insert description here
color_list = ds_list_create();

//Skin colors
white = make_color_rgb(255, 24, 225);
pale = make_color_rgb(255, 219, 172);
light_tan = make_color_rgb(241, 194, 125);
mid_tan = make_color_rgb(224, 172, 102);
dark_tan = make_color_rgb(198, 134, 66);
brown = make_color_rgb(141, 85, 36);
pink = make_color_rgb(255, 192, 203);
dark_brown = make_color_rgb(58, 48, 38);

skin_list = ds_list_create();
ds_list_add(skin_list, white, pale, light_tan, mid_tan, dark_tan, brown, dark_brown);

//Clothes and Hair colors
red = make_color_rgb(255, 0, 0);
orange = make_color_rgb(255,140,0);
yellow = make_color_rgb(255, 255, 0);
dark_green = make_color_rgb(0, 100, 0);
blue = make_color_rgb(0, 0, 255);
indigo = make_color_rgb(75, 0, 130);
violet = make_color_rgb(139, 0, 255);
white = make_color_rgb(255, 255, 255);
black = make_color_rgb(0, 0, 0);
sky_blue = make_color_rgb(0, 191, 255);
navy = make_color_rgb(0, 0, 139);
blonde = make_color_rgb(218, 165, 32);
maroon = make_color_rgb(128, 0, 0);
teal = make_color_rgb(0, 128, 128);
cyan = make_color_rgb(0, 255, 255);
aquamarine = make_color_rgb(127, 255, 212);
crimson = make_color_rgb(0, 128, 128);
gray = make_color_rgb(220, 220, 220);
silver = make_color_rgb(192, 192, 192);
orange_red = make_color_rgb(255, 69, 0);
red_orange = orange_red;
hot_pink = make_color_rgb(255, 20, 147);
lavender = make_color_rgb(230, 230, 250);

ds_list_add(color_list, maroon, orange, yellow, blue, indigo, cyan, hot_pink);
alarm[0] = 1;

rand = make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255));

hair_list = ds_list_create();
ds_list_add(hair_list, gray, blonde, black, white, brown, orange_red);