gui_scale = 1.1;

sped = 5;

xx = 0;
yy = 0;

hex_width = 128;
hex_height = 110;

world_width = 100;
world_height = world_width;

team = 1;

nation = 0; //0-Britain , 1-China, 2-Germany, 3-Japan, 4-Russia, 5-U.S.A, 6-Vietnam

//grenadier
grenadier_mpcost = 5;
grenadier_pcost = 5;
grenadier_ecost = 5;

//lmg
lmg_mpcost = 5;
lmg_pcost = 5;
lmg_mecost = 5;
lmg_ecost = 5;

//mortar
mortar_mpcost = 5;
mortar_pcost = 5;
mortar_mecost = 5;
mortar_ecost = 5;

//sniper
sniper_mpcost = 5;
sniper_pcost = 5;
sniper_ecost = 5;

//diver
diver_mpcost = 5;
diver_pcost = 5;
diver_ecost = 5;

//tank
tank_mpcost = 5;
tank_pcost = 5;
tank_mecost = 5;
tank_ecost = 5;

//armored car
car_mpcost = 5;
car_pcost = 5;
car_mecost = 5;
car_ecost = 5;

//aa tank
aa_tank_mpcost = 5;
aa_tank_pcost = 5;
aa_tank_mecost = 5;
aa_tank_ecost = 5;

//truck
truck_mpcost = 5;
truck_pcost = 5;
truck_mecost = 5;
truck_ecost = 5;

//carrier
carrier_mpcost = 5;
carrier_pcost = 5;
carrier_mecost = 5;
carrier_ecost = 5;

//corvette
corvette_mpcost = 5;
corvette_pcost = 5;
corvette_mecost = 5;
corvette_ecost = 5;

//cruiser
cruiser_mpcost = 5;
cruiser_pcost = 5;
cruiser_mecost = 5;
cruiser_ecost = 5;

//frigate
frigate_mpcost = 5;
frigate_pcost = 5;
frigate_mecost = 5;
frigate_ecost = 5;

//destroyer
destroyer_mpcost = 5;
destroyer_pcost = 5;
destroyer_mecost = 5;
destroyer_ecost = 5;

//bomber
bomber_mpcost = 5;
bomber_pcost = 5;
bomber_mecost = 5;
bomber_ecost = 5;

//fighter
fighter_mpcost = 5;
fighter_pcost = 5;
fighter_mecost = 5;
fighter_ecost = 5;

//straifer
straifer_mpcost = 5;
straifer_pcost = 5;
straifer_mecost = 5;
straifer_ecost = 5;


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

instance_create_layer(x,y,"units",obj_mouse);

obj_mouse.sprite = spr_mouse_neutral;

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