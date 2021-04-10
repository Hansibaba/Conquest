// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tilecolor(){
xx = argument[0];
yy = argument[1];

color = 0;
value = ds_grid_get(world_grid_height,xx,yy);

if value < 256
{
	color = make_color_hsv(85,0,90);
}


if value < max_altitude
{
	color = make_color_hsv(85,125,125);
}

if value < sea_level
{
	color = make_color_hsv(140,125,125);
}



return color;

}