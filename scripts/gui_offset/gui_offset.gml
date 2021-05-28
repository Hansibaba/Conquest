// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_offset(scale,position,is_width){

scale = argument[0];
position = argument[1];
is_width = argument[2];

width = (sprite_get_width(spr_in_game_main_ui));
height = (sprite_get_height(spr_in_game_main_ui));

pos = (position*scale)-((power(width,is_width)*(power(height,(1-is_width))))*(scale-1))

return pos;

}