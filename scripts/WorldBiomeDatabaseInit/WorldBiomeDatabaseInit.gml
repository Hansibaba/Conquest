/// @description WorldBiomeDatabaseInit()
function WorldBiomeDatabaseInit() {

	if (obj_civ_control.Biomes != -1)
	{
		ds_map_destroy(obj_civ_control.Biomes);	
	}

	obj_civ_control.Biomes = ds_map_create();

	var oceanBiome = WorldBiomeAdd("Ocean", .2);



}
