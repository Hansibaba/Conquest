randomize();
map_size = 4; //the size of the map, it is always a square esk shape
//map_array[map_size,map_size] = generate_map_array(map_size);
map_array[map_size][map_size] = 0;
map_array = generate_terrain(map_size);

for(var xx = 0;xx < map_size;xx++)
			{
				for(var yy = 0;yy < map_size;yy++)
				{
					switch(map_array[xx][yy])
					{
						case 0:
						//show_message("Part of map is unitialized");
						break;
						
						case 1:
						instance_create_layer(xx*92,yy*128,"instances",obj_desert_tile);
						break;
						
						case 2:
						instance_create_layer(xx*92,yy*128,"instances",obj_forest_tile);
						break;
						
						case 3:
						instance_create_layer(xx*92,yy*128,"instances",obj_tundra_tile);
						break;
						
						case 4:
						instance_create_layer(xx*92,yy*128,"instances",obj_ocean_tile);
						break;
						
						
						
					}	
				}
			}

