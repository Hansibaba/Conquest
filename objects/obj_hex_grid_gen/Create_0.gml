
randomize();
seedocean = string_byte_length(get_string("input a seed","Hansiworld"))*651984849810981;
seedhumidity = (seedocean/651984849810981)*987272465
seedtemp = (seedocean/651984849810981)*10226465481951
seedresource = (seedocean/651984849810981)*4854654654651651

x = 0;
y=0;

octaves =8;
freq = 12;
sea_level = 100;
max_altitude = 200;
spriacity = 5; //must be odd

resource_octaves =8;
resource_freq = 16;

world_width = 100;
world_height = world_width/2;

hex_width = 128;
hex_height = 110;

xx = 0;
yy = 0;

is_odd = 0; //dictates whether a collum of hexagons should be offset or not

world_grid_height = -1;
world_grid_humidity = -1;
world_grid_temp = -1;
world_grid_resource = -1

world_grid_height = ds_grid_create(world_width,world_height);
world_grid_humidity = ds_grid_create(world_width,world_height);
world_grid_temp = ds_grid_create(world_width,world_height);
world_grid_resource = ds_grid_create(world_width,world_height);


for(yyy = 0; yyy < world_height; yyy++)
	{
		for(xxx = 0; xxx < world_width; xxx++)
		{
			var height = (valuenoise(xxx*0.01,yyy*0.01,freq/2,octaves/2,seedocean)*127)+128;
			show_debug_message(height);
			
			ds_grid_set(world_grid_height,xxx,yyy,height);
		}
	}
	

	
	for(yyy = 0; yyy < world_height; yyy++)
	{
		for(xxx = 0; xxx < world_width; xxx++)
		{
			var humidity = (valuenoise(xxx*0.01,yyy*0.01,freq,octaves,seedhumidity)*127)+128;
			show_debug_message(humidity);
			
			ds_grid_set(world_grid_humidity,xxx,yyy,humidity);
		}
	}
	

	
	for(yyy = 0; yyy < world_height; yyy++)
	{
		for(xxx = 0; xxx < world_width; xxx++)
		{
			equator = (world_height/2)
			equitorial_distance = ((yyy-equator)/equator)*255
			equitorial_influence = (power(cos(equitorial_distance/(255/pi)),spriacity)*255)
			
			var temp = ((valuenoise(xxx*0.01,yyy*0.01,freq,octaves,seedtemp)*127)+128)+equitorial_influence;
			show_debug_message(temp);
			
			ds_grid_set(world_grid_temp,xxx,yyy,temp);
		}
	}
	
	for(yyy = 0; yyy < world_height; yyy++)
	{
		for(xxx = 0; xxx < world_width; xxx++)
		{	
			var resource = ((valuenoise(xxx*0.01,yyy*0.01,resource_freq,resource_octaves,seedresource)*127)+128);
			show_debug_message(resource);
			
			ds_grid_set(world_grid_resource,xxx,yyy,resource);
		}
	}
	
	
