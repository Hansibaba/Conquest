/// @description WorldGenerateGrid()
function WorldGenerateGrid() {

	var seed = obj_civ_control.Seed;
	var width = obj_civ_control.WorldWidth;
	var height = obj_civ_control.WorldHeight;

	if (obj_civ_control.WorldGrid != -1)
	{
		ds_grid_destroy(obj_civ_control.WorldGrid);	
	}


	obj_civ_control.WorldGrid = ds_grid_create(width,height);

	var total = 0;
	for(var xx = 0; xx < width; xx++)
	{
		for(var yy = 0; yy < height; yy++)
		{
			//loop through all the cells in the grid
			//var cellValue = RandomNoise(xx, yy, width, seed);
			//var cellValue = SmoothNoise(xx, yy, width, seed);
			//var cellValue = InterpolatedNoise(xx, yy, width, seed);
			var cellValue = PerlinNoise(xx, yy, width, seed, .1, 8, 8);
			total += cellValue;
			show_debug_message(cellValue);
			ds_grid_set(obj_civ_control.WorldGrid,xx,yy, cellValue);
		}
	}

	show_debug_message(total);
	show_debug_message((total/(width*height)));


}
