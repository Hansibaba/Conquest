// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tilesresource(){
xx = argument[0];
yy = argument[1];

resource = ds_grid_get(world_grid_resource,xx,yy);
height = ds_grid_get(world_grid_height,xx,yy);

if (height < max_altitude) && (height > sea_level)
{
	
	resource_tile = spr_undefined;
	
	if (resource > 230) && (resource < 256)
	{
		resource_tile = spr_uranium;
	}

	if (resource > 200) && (resource < 216)
	{
		resource_tile = spr_natural_gas;
	}

	if (resource > 140) && (resource < 150)
	{
		resource_tile = spr_coal;
	}
	
	
	if (resource > 70) && (resource < 80)
	{
		resource_tile = spr_geothermal;
	}
	
	
	if (resource > 0) && (resource < 30)
	{
		resource_tile = spr_oil;
	}
	
}
else
{
	resource_tile = spr_undefined;	
}

return resource_tile;

}