//Land type table
//uninitialized = 0 ; 1 = desert ; 2 = forest ; 3 = tundra ; ocean = 5
function generate_terrain(argument0)
{
	var targetx = 0 //random spot on the map that will generate a sploch of land for the x
	var targety = 0 ////random spot on the map that will generate a sploch of land for the y
	var map_size = argument0; //map is a square, this is both the width and heigth
	//map_array[map_size][map_size] = undefined; //initial array for the map to generate off of
	var terrain_amount = 0; //the amount of terrain generated thus far, must be at least 30%
	var terrain_percentage = irandom_range((map_size*map_size)/3,map_size*map_size); //the percentage of terrain that is land on the map
	var ocean_percentage = irandom_range(0,map_size-terrain_percentage); //the percentage of ocean that is able to be places
	var biomesize = 4//irandom_range( biome_size-1, biome_size+3); //this is mesured in 
	//initialize map array
	for(var map_width = 0;map_width<map_size;map_width++)
	{
		for(var map_heigth = 0;map_heigth<map_size;map_heigth++)
		{
			map_array[map_width][map_heigth] = 0;
		}
	}
	//filling map array
	/*targetx = irandom_range(0,map_size); //picking a random x inside the map
	targety = irandom_range(0,map_size); //picking a random y inside the map*/
	targetx = 0;
	targety = 0;
	
	if map_array[targetx][targety] == 0
	{

		//map_array[targetx,targety] = 3;
		for(var xx = 0;xx < map_size;xx++)
		{
			for(var yy = 0;yy < map_size;yy++)
			{
				if terrain_amount < terrain_percentage
				{
				map_array[targetx+xx][targety+yy] = irandom_range(1,3);
				terrain_amount += 1;
				}
			}
		}
	}

	return (map_array);	
	//show_message(string(targetx));

}
