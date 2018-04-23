if(color = c_blue) color = c_red;
else color = c_blue;
flashes++;

if(flashes > flash_number) instance_destroy();

alarm[0] = 4;
