

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
}*/

if is_odd = 1
{
		y = ((round((mouse_y+hex_height/2)/hex_height))*hex_height)-(hex_height/2)
}


if unit_type = 0
{
	draw_sprite(spr_grenadiers,0,x,y);	
}