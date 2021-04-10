for(yy = 0; yy < world_height; yy++)
{
	for(xx = 0; xx < world_width; xx++)
	{
		if is_odd == 0
		{
			draw_sprite_ext(spr_hex,0,(xx)*((hex_width*(3/4))),yy*(hex_height),1,1,0,tilecolor(xx,yy),1);
			//hex_width-(hex_height/3.625)
			is_odd = 1;
			
			/*if ds_grid_get(world_grid_height,xx,yy) > 255
			{
				draw_text(xx,yy,"funny");	
			}*/
		}
		else
		{
			draw_sprite_ext(spr_hex,0,((xx))*((hex_width*(3/4))),((yy*(hex_height))+hex_height/2),1,1,0,tilecolor(xx,yy),1);
			//hex_width-(hex_height/3.625)
			is_odd = 0;
		}
	}
	is_odd = 0;
}
xx = 0;
yy = 0;

draw_text(mouse_x,mouse_y-16,(noise(mouse_x*hex_width,mouse_y*hex_height,freq,octaves,seedocean)*127)+128)
