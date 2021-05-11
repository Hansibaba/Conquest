sped = 20;

xx = 0;
yy = 0;

hex_width = 128;
hex_height = 110;

world_width = 100;
world_height = world_width;

hex_x = round(mouse_x/(hex_width*3/4))*(hex_width*3/4)
hex_y = ((round(mouse_y/hex_height))*hex_height)

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

energy = 63;
production = 84;
population = 97;
manpower = 53;