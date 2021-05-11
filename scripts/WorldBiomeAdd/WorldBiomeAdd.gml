/// @description WorldBiomeAdd(name, average height)
/// @param name
/// @param average height
function WorldBiomeAdd(argument0, argument1) {


	var newBiome = ds_map_create();

	ds_map_add(newBiome, "name", argument0);
	ds_map_add(newBiome, "height", argument1);
	ds_map_add(newBiome, "tiles", -1);

	//add biome to database
	ds_map_add(obj_civ_control.Biomes, argument0, newBiome);

	return newBiome;


}
