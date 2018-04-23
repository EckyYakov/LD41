/// @desc Cycle through an animation
/// @arg sprite This is the sprite to animate
/// @arg animationSpeed Speed at which to animate the sprite
/// @arg recycle Whether or not to recycle the animation

var sprite = argument0;
var animationSpeed = argument1;
var recycle = argument2;

spr_index = sprite;
sprite_index = sprite;

sub_image += animationSpeed;
if(sub_image >= sprite_get_number(sprite)){
    if(recycle) sub_image = 0;
    else{
        animationSpeed = 0;
        sub_image = image_number - 1;
        animation_completed = true;
    }
}