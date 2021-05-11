if keyboard_check_pressed(vk_enter)
{
	hex_x = round(mouse_x/(hex_width*3/4))*(hex_width*3/4)
	hex_y = ((round(mouse_y/hex_height))*hex_height)

	if IsEven((hex_x/(hex_width*(3/4))))
	{
		is_odd = 0;	
	}
	else
	{
		is_odd = 1;	
	}

	if is_odd = 1
	{
			hex_y = ((round((mouse_y+hex_height/2)/hex_height))*hex_height)-(hex_height/2)
	}

	ds_grid_set(world_grid_unit,hex_x,hex_y,unit_type)
}

for(yy = 0; yy < world_width; yy++)
{
	for(xx = 0; xx < world_width; xx++)
	{
		if ds_grid_get(world_grid_unit,xx,yy) > 0
		{
			hex_x = round(xx/(hex_width*3/4))*(hex_width*3/4)
			hex_y = ((round(yy/hex_height))*hex_height)

			if IsEven((hex_x/(hex_width*(3/4))))
			{
				is_odd = 0;	
			}
			else
			{
				is_odd = 1;	
			}

			if is_odd = 1
			{
					hex_y = ((round((yy+hex_height/2)/hex_height))*hex_height)-(hex_height/2)
			}
			
			switch (ds_grid_get(world_grid_unit,xx,yy))
			{
				case 1:
				draw_sprite(spr_grenadiers,0,hex_x,hex_y)
				break;
			}
		}
	}
}