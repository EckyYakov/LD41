text = "You were detected by the other gardners. Try again!"

room_id = asset_get_index("rm_level_" + string(global.highest_level));
room_goto(room_id);
