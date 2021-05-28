

if keyboard_check_pressed(vk_add)
{
	gui_scale += 0.1;	
}

if keyboard_check_pressed(vk_subtract)
{
	gui_scale -= 0.1;	
}


width = sprite_get_width(spr_in_game_main_ui);
height = sprite_get_height(spr_in_game_main_ui);

draw_sprite_ext(spr_in_game_main_ui,0,((width)-(width*gui_scale)),((height)-(height*gui_scale)),gui_scale,gui_scale,0,c_white,1);
//draw_sprite(spr_lightning,0,870,705);
draw_set_font(fnt_small);
color = make_color_hsv(40,190,140)
draw_healthbar(gui_offset(gui_scale,694,1),gui_offset(gui_scale,735,0),gui_offset(gui_scale,888,1),gui_offset(gui_scale,764,0),energy,c_black,color,color,0,0,0);
color = make_color_hsv(45,255,255)
draw_text_transformed_color(gui_offset(gui_scale,697,1),gui_offset(gui_scale,743,0),energy,gui_scale,gui_scale,0,color,color,color,color,1);

color = make_color_hsv(20,190,140)
draw_healthbar(gui_offset(gui_scale,694,1),gui_offset(gui_scale,702,0),gui_offset(gui_scale,888,1),gui_offset(gui_scale,731,0),metal,c_black,color,color,0,0,0);
color = make_color_hsv(25,255,255)
draw_text_transformed_color(gui_offset(gui_scale,697,1),gui_offset(gui_scale,710,0),metal,gui_scale,gui_scale,0,color,color,color,color,1);

color = make_color_hsv(127,190,140)
draw_healthbar(gui_offset(gui_scale,694,1),gui_offset(gui_scale,669,0),gui_offset(gui_scale,888,1),gui_offset(gui_scale,698,0),population,c_black,color,color,0,0,0);
color = make_color_hsv(117,255,255)
draw_text_transformed_color(gui_offset(gui_scale,697,1),gui_offset(gui_scale,677,0),population,gui_scale,gui_scale,0,color,color,color,color,1);

color = make_color_hsv(80,190,140)
draw_healthbar(gui_offset(gui_scale,694,1),gui_offset(gui_scale,636,0),gui_offset(gui_scale,888,1),gui_offset(gui_scale,665,0),manpower,c_black,color,color,0,0,0);
color = make_color_hsv(70,255,255)
draw_text_transformed_color(gui_offset(gui_scale,697,1),gui_offset(gui_scale,644,0),manpower,gui_scale,gui_scale,0,color,color,color,color,1);

draw_sprite_ext(spr_button_attack,0,gui_offset(gui_scale,892,1),gui_offset(gui_scale,636,0),gui_scale,gui_scale,0,c_white,1);

window_set_cursor(cr_none);
draw_rectangle(gui_offset(gui_scale,892,1),gui_offset(gui_scale,636,0),gui_offset(gui_scale,921,1),gui_offset(gui_scale,665,0),1)