sped = 20;

xx = 0;
yy = 0;

hex_width = 128;
hex_height = 110;

world_width = 100;
world_height = world_width;

//grenadier
grenadier_mpcost = 10;
grenadier_pcost = 20;
grenadier_ecost = 20;

//lmg
lmg_mpcost = 20;
lmg_pcost = 20;
lmg_mecost = 20;
lmg_ecost = 20;

//mortar
mortar_mpcost = 20;
mortar_pcost = 20;
mortar_mecost = 20;
mortar_ecost = 20;

//sniper
sniper_mpcost = 20;
sniper_pcost = 20;
sniper_ecost = 20;

//diver
diver_mpcost = 20;
diver_pcost = 20;
diver_ecost = 20;

//tank
tank_mpcost = 20;
tank_pcost = 20;
tank_mecost = 20;
tank_ecost = 20;

//armored car
car_mpcost = 20;
car_pcost = 20;
car_mecost = 20;
car_ecost = 20;

//aa tank
aa_tank_mpcost = 20;
aa_tank_pcost = 20;
aa_tank_mecost = 20;
aa_tank_ecost = 20;

//truck
truck_mpcost = 20;
truck_pcost = 20;
truck_mecost = 20;
truck_ecost = 20;

//carrier
carrier_mpcost = 20;
carrier_pcost = 20;
carrier_mecost = 20;
carrier_ecost = 20;

//corvette
corvette_mpcost = 20;
corvette_pcost = 20;
corvette_mecost = 20;
corvette_ecost = 20;

//cruiser
cruiser_mpcost = 20;
cruiser_pcost = 20;
cruiser_mecost = 20;
cruiser_ecost = 20;

//frigate
frigate_mpcost = 20;
frigate_pcost = 20;
frigate_mecost = 20;
frigate_ecost = 20;

//destroyer
destroyer_mpcost = 20;
destroyer_pcost = 20;
destroyer_mecost = 20;
destroyer_ecost = 20;

//bomber
bomber_mpcost = 20;
bomber_pcost = 20;
bomber_mecost = 20;
bomber_ecost = 20;

//fighter
fighter_mpcost = 20;
fighter_pcost = 20;
fighter_mecost = 20;
fighter_ecost = 20;

//straifer
straifer_mpcost = 20;
straifer_pcost = 20;
straifer_mecost = 20;
straifer_ecost = 20;


hex_x = round(mouse_x/(hex_width*3/4))*(hex_width*3/4)
hex_y = ((round(mouse_y/hex_height))*hex_height)

world_x = round(mouse_x/(hex_width*3/4))
world_y = round(mouse_y/hex_height)

if IsEven((hex_x/(hex_width*(3/4))))
{
	is_odd = 0;	
}
else
{
	is_odd = 1;	
}

if is_odd = 1
{
		hex_y = ((round((mouse_y+hex_height/2)/hex_height))*hex_height)-(hex_height/2)
}


max_fov = 15000;
min_fov = 100;
fov = max_fov/6;
fov_change_speed = 100;
cam = camera_create();
var viewmat = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var projmat = matrix_build_projection_ortho(fov*1.33333333333, fov, 0.001, 32000.0);
camera_set_view_mat(cam,viewmat);
camera_set_proj_mat(cam, projmat);
view_camera[0] = cam;

world_grid_unit = -1;

world_grid_unit = ds_grid_create(world_width,world_height);

for(yy = 0; yy < world_width; yy++)
{
	for(xx = 0; xx < world_width; xx++)
	{
		ds_grid_set(world_grid_unit,xx,yy,0)
	}
}

unit_type = 1;

energy = 100;
metal = 100;
population = 100; //this is the population slots still availble, as units are made, this number goes down
manpower = 100;