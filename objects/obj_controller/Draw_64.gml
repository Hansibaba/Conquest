
draw_sprite(spr_in_game_main_ui,0,0,0);
//draw_sprite(spr_lightning,0,870,705);
draw_set_font(fnt_small);
color = make_color_hsv(40,190,140)
draw_healthbar(694,735,888,764,energy,c_black,color,color,0,0,0)
color = make_color_hsv(45,255,255)
draw_text_color(697,743,energy,color,color,color,color,1);

color = make_color_hsv(20,190,140)
draw_healthbar(694,702,888,731,metal,c_black,color,color,0,0,0)
color = make_color_hsv(25,255,255)
draw_text_color(697,710,metal,color,color,color,color,1);

color = make_color_hsv(127,190,140)
draw_healthbar(694,669,888,698,population,c_black,color,color,0,0,0)
color = make_color_hsv(117,255,255)
draw_text_color(697,677,population,color,color,color,color,1);

color = make_color_hsv(80,190,140)
draw_healthbar(694,636,888,665,manpower,c_black,color,color,0,0,0)
color = make_color_hsv(70,255,255)
draw_text_color(697,644,manpower,color,color,color,color,1);

