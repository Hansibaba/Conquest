/// @description WorldGetZ(x,y)
/// @param worldX
/// @param worldY
function WorldGetZ(argument0, argument1) {


	if (obj_civ_control.WorldGrid != -1)
	{
		return ds_grid_get(obj_civ_control.WorldGrid,argument0,argument1);	
	}


}
