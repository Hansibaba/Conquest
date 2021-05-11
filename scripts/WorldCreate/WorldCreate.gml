/// @description WorldCreate(seed, width, height)
/// @param seed
/// @param width
/// @param height
function WorldCreate(argument0, argument1, argument2) {

	//set persistent object variables
	obj_civ_control.Seed = real(argument0);

	obj_civ_control.WorldWidth = argument1;
	obj_civ_control.WorldHeight = argument2;

	var width = argument1 * obj_civ_control.CellSize;
	var height = argument2 * obj_civ_control.CellSize;

	//create biome database
	WorldBiomeDatabaseInit();

	//create world room
	var worldRoom = room_add()
	room_set_width(worldRoom, width);
	room_set_height(worldRoom, height);
	room_set_persistent(worldRoom, false);

	//add the world renderer to the room >:D
	room_instance_add(worldRoom, 0, 0, obj_world_render);

	if (obj_civ_control != -1)
	{
		//destroy the camera if it already exists in memory. according to the documentation the camera doesnt destroy itself after the room closes so this is a posible memory leak that we need to manage.
		camera_destroy(obj_civ_control.Camera);	
	}

	//set viewport - where the camera is drawn on the screen
	room_set_viewport(worldRoom, 0, true, 0, 0, window_get_width(), window_get_height());

	//create the camera
	obj_civ_control.Camera = camera_create_view(0, 0, window_get_width(),  window_get_height());

	//set the camera to the room
	room_set_camera(worldRoom, 0, obj_civ_control.Camera);

	//enable the use of views in the room
	room_set_view_enabled(worldRoom, true);

	//make sure the civ control has updated hex grid properties
	UpdateHexProperties();

	//Generate the World
	WorldGenerateGrid();


	//goto the room we just created
	room_goto(worldRoom);


}
