while yy/hex_height < world_height
{
	while xx/hex_width < world_width
	{
		if is_odd == 0
		{
			draw_sprite_ext(spr_hex,0,xx,yy,1,1,0,tilecolor(xx*hex_width,yy*hex_height),1);
			xx += hex_width-(hex_height/3.625)
			is_odd = 1;
			
			if ds_grid_get(world_grid_height,xx,yy) > 255
			{
				draw_text(xx,yy,"funny");	
			}
		}
		else
		{
			draw_sprite_ext(spr_hex,0,xx,yy+((hex_height/2)),1,1,0,tilecolor(xx*hex_width,yy*hex_height),1);
			xx += hex_width-(hex_height/3.625)
			is_odd = 0;
		}
	}
	yy += hex_height
	xx = 0;
	is_odd = 0;
}
xx = 0;
yy = 0;

draw_text(mouse_x,mouse_y-16,(noise(mouse_x*hex_width,mouse_y*hex_height,freq,octaves,seedocean)*127)+128)
