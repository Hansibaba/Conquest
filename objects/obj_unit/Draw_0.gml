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
	break;
	
	case 2:
	sprite = spr_lmg;
	break;
	
	case 3:
	sprite = spr_mortar;
	break;
	
	case 4:
	sprite = spr_sniper;
	break;
	
	case 5:
	sprite = spr_diver;
	break;
	
	case 6:
	sprite = spr_truck;
	break;
	
	case 7:
	sprite = spr_scout_car;
	break;
	
	case 8:
	sprite = spr_tank
	break;
	
	case 9:
	sprite = spr_aa_tank
	break;
	
	case 10:
	sprite = spr_carrier;
	break;
	
	case 11:
	sprite = spr_corvette;
	break;
	
	case 12:
	sprite = spr_cruiser; 
	break;
	
	case 13:
	sprite = spr_destroyer;
	break;
	
	case 14:
	sprite = spr_frigate;
	break;
	
	case 15:
	sprite = spr_bomber;
	break;
	
	case 16:
	sprite = spr_fighter;
	break;
	
	case 17:
	sprite = spr_straifer;
	break;
	
}

if sprite = spr_undefined
{
	instance_destroy();	
}
else
{
	draw_sprite(sprite,-1,x,y);	
}
