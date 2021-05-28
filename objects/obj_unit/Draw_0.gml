/*

x = mouse_x
y = mouse_y

x = round(mouse_x/(hex_width*3/4))*(hex_width*3/4)
y = ((round(mouse_y/hex_height))*hex_height)



if IsEven((x/(hex_width*(3/4))))
{
	is_odd = 0;	
}
else
{
	is_odd = 1;	
}

/*if is_odd = 0
{

	//is_odd = 1;
	draw_text_color(x,y+16,x,c_black,c_black,c_black,c_black,1)
	draw_text_color(x,y+32,y,c_white,c_white,c_white,c_white,1)
}

if is_odd = 1
{
		y = ((round((mouse_y+hex_height/2)/hex_height))*hex_height)-(hex_height/2)
}

draw_text(x,y,obj_controller.world_x)
draw_text(x,y+16,obj_controller.world_y)
*/



switch (unit_type)
{
	case 1:
	sprite = spr_grenadiers;
	icon_sprite = spr_icon_grenadier;
	break;
	
	case 2:
	sprite = spr_lmg;
	icon_sprite = spr_icon_lmg;
	break;
	
	case 3:
	sprite = spr_mortar;
	icon_sprite = spr_icon_mortar;
	break;
	
	case 4:
	sprite = spr_sniper;
	icon_sprite = spr_icon_sniper;
	break;
	
	case 5:
	sprite = spr_diver;
	icon_sprite = spr_icon_diver;
	break;
	
	case 6:
	sprite = spr_truck;
	icon_sprite = spr_icon_truck;
	break;
	
	case 7:
	sprite = spr_scout_car;
	icon_sprite = spr_icon_scout_car;
	break;
	
	case 8:
	sprite = spr_tank
	icon_sprite = spr_icon_tank;
	break;
	
	case 9:
	sprite = spr_aa_tank
	icon_sprite = spr_icon_aa_tank;
	break;
	
	case 10:
	sprite = spr_carrier;
	icon_sprite = spr_icon_carrier;
	break;
	
	case 11:
	sprite = spr_corvette;
	icon_sprite = spr_icon_corvette;
	break;
	
	case 12:
	sprite = spr_cruiser; 
	icon_sprite = spr_icon_cruiser;
	break;
	
	case 13:
	sprite = spr_destroyer;
	icon_sprite = spr_icon_destroyer;
	break;
	
	case 14:
	sprite = spr_frigate;
	icon_sprite = spr_icon_frigate;
	break;
	
	case 15:
	sprite = spr_bomber;
	icon_sprite = spr_icon_bomber;
	break;
	
	case 16:
	sprite = spr_fighter;
	icon_sprite = spr_icon_fighter;
	break;
	
	case 17:
	sprite = spr_straifer;
	icon_sprite = spr_icon_straifer;
	break;
	
}

switch(team)
{
	case 1:
	color = make_color_hsv(0,255,255);
	break;
	
	case 2:
	color = make_color_hsv(100,255,255);
	break;
	
	case 3:
	color = make_color_hsv(200,255,255);
	break;
}

if sprite = spr_undefined
{
	instance_destroy();	
}
else
{
	draw_sprite_ext(icon_sprite,-1,x,y,1,1,0,color,1);
	draw_sprite(sprite,-1,x,y);	
}
