if y < room_height
{
	var equitorial_influence = 	((abs((room_height/2)-y)/1.5)*-1)+128;
	
	while (x < room_width)
	{
		var height = (valuenoise(x,y*voffset,freq,octaves,seedocean)*127)+128;
		var humidity = (valuenoise(x,y*voffset,freq,octaves,seedhumidity)*127)+128;
		var temp = ((valuenoise(x,y*voffset,freq,octaves,seedtemp)*127)+128)+equitorial_influence;
		
		if temp > 255
		{
			temp = 255;	
		}
		
		if temp < 1
		{
			temp = 1;	
		}
		
		if (height > sea_level) and (height < max_altitude)
		{
			if (temp > 0) and (temp < 50)
			{
				if (humidity > 0) and (humidity < 127){
				instance_create_layer(x,y*voffset,"terrain",obj_tundra_tile)
				//draw_sprite(spr_tundra_tile,0,x,y);
				}
			
				if (humidity >= 127) and (humidity < 255){
				instance_create_layer(x,y*voffset,"terrain",obj_tundra_tile)
				//draw_sprite(spr_tundra_tile,0,x,y);
				}
			
			}

			if (temp >= 50) and (temp < 200)
			{
				if (humidity > 0) and (humidity < 127){
				instance_create_layer(x,y*voffset,"terrain",obj_forest_tile)
				//draw_sprite(spr_forest_tile,0,x,y);
				}
			
				if (humidity >= 127) and (humidity < 255){
				instance_create_layer(x,y*voffset,"terrain",obj_forest_tile)
				//draw_sprite(spr_forest_tile,0,x,y);
				}
			}
						
			if (temp >= 200) and (temp <= 255)
			{
				if (humidity > 0) and (humidity < 127){
				instance_create_layer(x,y*voffset,"terrain",obj_desert_tile);
				//draw_sprite(spr_desert_tile,0,x,y);
				}
			
				if (humidity >= 127) and (humidity < 255){
				instance_create_layer(x,y*voffset,"terrain",obj_desert_tile);
				//draw_sprite(spr_desert_tile,0,x,y);
				}
			}
		}
		else
		{
			if height < sea_level
				{
					//instance_create_layer(x,y*voffset,"terrain",obj_ocean_tile);
					draw_sprite(spr_ocean_tile,0,x,y);
				}
			
				if height > max_altitude
				{
					//instance_create_layer(x,y*voffset,"terrain",obj_mountain_tile);
					draw_sprite(spr_mountain_tile,0,x,y);
				}
		}
		x += (x * hoffset) + startoffset
	}
	y += (y * voffset) + startoffset
	x=0 + startoffset;

}