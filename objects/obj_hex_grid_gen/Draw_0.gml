

for(yy = 0; yy < world_height; yy++)
{
	for(xx = 0; xx < world_width; xx++)
	{
		if is_odd == 0
		{
			draw_sprite_ext(tilessprite(xx,yy),0,(xx)*((hex_width*(3/4))),yy*(hex_height),1,1,0,c_white,1);
			//hex_width-(hex_height/3.625)
			is_odd = 1;
			
			if ds_grid_get(world_grid_height,xx,yy) > 255
			{
				draw_text(xx,yy,"funny");	
			}
		}
		else
		{
			draw_sprite_ext(tilessprite(xx,yy),0,((xx))*((hex_width*(3/4))),((yy*(hex_height))+hex_height/2),1,1,0,c_white,1);
			//hex_width-(hex_height/3.625)
			is_odd = 0;
		}
	}
	is_odd = 0;
}
xx = 0;
yy = 0;

for(yy = 0; yy < world_height; yy++)
{
	for(xx = 0; xx < world_width; xx++)
	{
		if is_odd == 0
		{
			/*resource = ds_grid_get(world_grid_resource,xx,yy);
			draw_text((xx)*((hex_width*(3/4))),yy*(hex_height),resource);*/
			
			if tilesresource(xx,yy) != spr_undefined
			{
			draw_sprite_ext(tilesresource(xx,yy),0,(xx)*((hex_width*(3/4))),yy*(hex_height),1,1,0,c_white,1);
			//hex_width-(hex_height/3.625)
			}
			
			
			
			is_odd = 1;
			
			if ds_grid_get(world_grid_height,xx,yy) > 255
			{
				draw_text(xx,yy,"funny");	
			}
		}
		else
		{
			/*resource = ds_grid_get(world_grid_resource,xx,yy);
			draw_text((xx)*((hex_width*(3/4))),((yy*(hex_height))+hex_height/2),resource);*/
			
			if tilesresource(xx,yy) != spr_undefined
			{
			draw_sprite_ext(tilesresource(xx,yy),0,((xx))*((hex_width*(3/4))),((yy*(hex_height))+hex_height/2),1,1,0,c_white,1);
			//hex_width-(hex_height/3.625)
			}

			
			is_odd = 0;
		}
	}
	is_odd = 0;
}

