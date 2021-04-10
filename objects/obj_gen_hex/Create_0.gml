
randomize();
seedocean = string_byte_length(get_string("input a seed","Hansiworld"))*651984849810981;
seedhumidity = (seedocean/651984849810981)*987272465
seedtemp = (seedocean/651984849810981)*10226465481951
x = 0;
y=0;

octaves =8;
freq = 12;
sea_level = 100;
max_altitude = 180;
spriacity = 3; //must be odd

hex_width = 132;
hex_height = 116;

world_width = 100;
world_height = 100;

xx = 0;
yy = 0;

is_odd = 0; //dictates whether a collum of hexagons should be offset or not

world_grid_height = -1;

world_grid_height = ds_grid_create(world_width,world_height);


for(yyy = 0; yyy < world_height; yyy++)
	{
		for(xxx = 0; xxx < world_width; xxx++)
		{
			var height = (noise(xxx*0.01,yyy*0.01,freq,octaves,seedocean)*127)+128;
			show_debug_message(height);
			
			ds_grid_set(world_grid_height,xxx,yyy,height);
		}
	}
	
