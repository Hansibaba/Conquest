
draw_sprite(spr_in_game_main_ui,0,0,0);
//draw_sprite(spr_lightning,0,870,705);
draw_set_font(fnt_small);
color = make_color_hsv(40,190,190)
draw_healthbar(515,704,892,732,energy,c_black,color,color,0,0,0)
color = make_color_hsv(45,255,255)
draw_text_color(697,712,energy,color,color,color,color,1);

color = make_color_hsv(20,190,190)
draw_healthbar(515,736,892,764,production,c_black,color,color,0,0,0)
color = make_color_hsv(25,255,255)
draw_text_color(697,743,production,color,color,color,color,1);

color = make_color_hsv(127,190,190)
draw_healthbar(515,672,892,700,population,c_black,color,color,0,0,0)
color = make_color_hsv(117,255,255)
draw_text_color(697,681,population,color,color,color,color,1);

color = make_color_hsv(80,190,190)
draw_healthbar(515,640,892,668,manpower,c_black,color,color,0,0,0)
color = make_color_hsv(70,255,255)
draw_text_color(697,650,manpower,color,color,color,color,1);

