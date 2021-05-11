/// @description Draw World
// You can write your code in this editor

{

//draw grid
for(xx = 0; xx < obj_civ_control.WorldWidth; xx++)
{
	for(yy = 0; yy < obj_civ_control.WorldHeight; yy++)
	{
		var drawX = GetHexX(xx);
		var drawY = GetHexY(xx,yy);
		var zz = WorldGetZ(xx,yy);
		var color = GetExampleTerrainColor(zz);
		//var color = GetGrayScaleColor(zz);

		
		/*if zz > min_color and zz < max_color
		{
			color = biome_type;
		}
		else
		{
			min_color = zz - biome_size;
			max_color = zz + biome_size;	
			color = irandom_range(1,5);
		}*/
		
		switch(color)
		{
			case c_aqua:
			draw_sprite_stretched(spr_desert_tile, 0, drawX, drawY, obj_civ_control.HexWidth, obj_civ_control.HexHeightCeil);
			break;
			
			case c_yellow:
			draw_sprite_stretched(spr_forest_tile, 0, drawX, drawY, obj_civ_control.HexWidth, obj_civ_control.HexHeightCeil);
			break;
			
			case c_gray:
			draw_sprite_stretched(spr_mountain_tile, 0, drawX, drawY, obj_civ_control.HexWidth, obj_civ_control.HexHeightCeil);
			break;
			
			case c_green:
			draw_sprite_stretched(spr_tundra_tile, 0, drawX, drawY, obj_civ_control.HexWidth, obj_civ_control.HexHeightCeil);
			break;
			
			case c_blue:
			draw_sprite_stretched(spr_ocean_tile, 0, drawX, drawY, obj_civ_control.HexWidth, obj_civ_control.HexHeightCeil);
			break;
		}

		
		//draw_set_color(c_black);
		//draw_set_font(fnt_small);
		//draw_set_valign(fa_center);
		//draw_set_halign(fa_center);
		//draw_text(drawX+(obj_civ_control.HexWidth/2),drawY+(obj_civ_control.HexHeightCeil/2), zz);
	}
}
}


