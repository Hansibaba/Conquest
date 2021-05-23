// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tilesresource(){
xx = argument[0];
yy = argument[1];

resource = ds_grid_get(world_grid_resource,xx,yy);
height = ds_grid_get(world_grid_height,xx,yy);
temp = ds_grid_get(world_grid_temp,xx,yy);

resource_tile = spr_undefined

if temp > 5 
{
	if (height < max_altitude) && (height > sea_level)
	{
	
		///Uranium
	
		if rarity(240,1,resource)
		{
			resource_tile = spr_uranium;
		}
	
		if rarity(90,0.1,resource)
		{
			resource_tile = spr_uranium;
		}
	
		if rarity(175,0.1,resource)
		{
			resource_tile = spr_uranium;
		}
	
		///Natural Gas

		if rarity(150,0.2,resource)
		{
			resource_tile = spr_natural_gas;
		}
	
		if rarity(50,0.2,resource)
		{
			resource_tile = spr_natural_gas;
		}
	
		if rarity(200,0.2,resource)
		{
			resource_tile = spr_natural_gas;
		}
	
		///Coal

		if rarity(220,1,resource)
		{
			resource_tile = spr_coal;
		}
	
		if rarity(120,1,resource)
		{
			resource_tile = spr_coal;
		}
	
		///Geothermal
	
		if rarity(80,0.2,resource)
		{
			resource_tile = spr_geothermal;
		}
	
		if rarity(130,0.2,resource)
		{
			resource_tile = spr_geothermal;
		}
	
		///Oil
	
		if rarity(20,2,resource)
		{
			resource_tile = spr_oil;
		}
	
	}
	else
	{
		if height < max_altitude
		{
		
			if rarity(50,0.5,resource)
			{
				resource_tile = spr_oil;
			}
		
			if rarity(100,0.5,resource)
			{
				resource_tile = spr_oil;
			}
		
			if rarity(150,0.5,resource)
			{
				resource_tile = spr_oil;	
			}
		
			if rarity(200,0.5,resource)
			{
				resource_tile = spr_oil;	
			}
		}
	}
}

return resource_tile;

}