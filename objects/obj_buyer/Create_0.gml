// Stand there for set amount of time.. then leave.
var controller = instance_find(par_level_controller, 0);
stay_time = controller.buyer_time;
alarm[0] = stay_time;

money_sprite = spr_money;

money_scale = .8;

money_scale_top = 1.2;
money_scale_bot = .7;
money_scale_growth = .01;

boy_sprite = choose(spr_buyer_black, spr_buyer_brown, spr_buyer_white);

sub_image = 0;

