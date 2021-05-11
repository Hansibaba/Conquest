// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tilessprite(){
xx = argument[0];
yy = argument[1];

height = ds_grid_get(world_grid_height,xx,yy);
temp = ds_grid_get(world_grid_temp,xx,yy);
humidity = ds_grid_get(world_grid_humidity,xx,yy);

if temp > 255
{
	temp = 255;
}

if temp < 1
{
	temp = 1;	
}

if height > 255
{
	height = 255;
}

if height < 1
{
	height = 1;	
}

if humidity > 255
{
	humidity = 255;
}

if humidity < 1
{
	humidity = 1;	
}

if height > sea_level and height < max_altitude
{
	if temp <= 255
	{
		if humidity >= 210
		{
			sprite = spr_oasis_tile;
		}
		
		if humidity < 210
		{
			sprite = spr_jungle_tile;	
		}
		
		if humidity < 160
		{
			sprite = spr_savanna_tile;
		}
		
		if humidity < 120
		{
			sprite = spr_desert_tile;	
		}
		
		if humidity < 60
		{
			sprite = spr_wasteland_tile;
		}		
	}
	
	if temp < 170
	{
		if humidity >= 220
		{
			sprite = spr_stoneland_tile;
		}
		
		if humidity < 220
		{
			sprite = spr_hills_tile;	
		}
		
		if humidity < 190
		{
			sprite = spr_plains_tile;
		}
		
		if humidity < 127
		{
			sprite = spr_forest_tile;	
		}
		
		if humidity < 60
		{
			sprite = spr_swamp_tile;
		}
	}
	
	if temp < 95
	{
		if humidity >= 250
		{
			sprite = spr_polar_desert_tile;
		}
		
		if humidity < 250
		{
			sprite = spr_snow_plains_tile;	
		}
		
		if humidity < 190
		{
			sprite = spr_tundra_tile;
		}
		
		if humidity < 127
		{
			sprite = spr_snow_plains_tile;	
		}
		
		if humidity < 80
		{
			sprite = spr_ice_plains_tile;
		}
	}
	
	if temp < 5
	{
	sprite = spr_glacier_tile;	
	}
}
else
{
	if height < sea_level
	{
		if temp < 5
		{
		sprite = spr_glacier_tile;	
		}
		else
		{
		sprite = spr_ocean_tile;
		}
	}
	
	if height > max_altitude
	{
		if temp < 5
		{
		sprite = spr_glacier_tile;	
		}
		else
		{
		sprite = spr_mountain_tile;
		}
	}
}

return sprite;

}