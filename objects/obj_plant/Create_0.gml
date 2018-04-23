growth = 0;

growth_timer = 0;
growth_rate = 1;
full_growth = 4;

growth_threshold = growth_rate * room_speed * 15;

color = c_white;

needs_water = false;

type = "Plant";

// Calculate col and row
col = floor(x/global.cell_size);
row = floor(y/global.cell_size);

top = ds_grid_get(global.game_grid, col, row - 1);
bot = ds_grid_get(global.game_grid, col, row + 1);
left = ds_grid_get(global.game_grid, col - 1, row);
right = ds_grid_get(global.game_grid, col + 1, row);
