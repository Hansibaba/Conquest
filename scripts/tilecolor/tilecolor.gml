// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tilecolor(){
xx = argument[0];
yy = argument[1];

color = 0;
value = ds_grid_get(world_grid_height,xx,yy);

if value < 256
{
	color = 255;
}


if value < 170
{
	color = 190;
}

if value < 85
{
	color = 140
}



return make_color_hsv(color,150,150);

}