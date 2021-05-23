hex_x = round(mouse_x/(hex_width*3/4))*(hex_width*3/4)
	hex_y = ((round(mouse_y/hex_height))*hex_height)
	
	world_x = round(mouse_x/(hex_width*3/4))
	world_y = round(mouse_y/hex_height)

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
	
	if is_odd = 1
	{
		hex_y = ((round((mouse_y+hex_height/2)/hex_height))*hex_height)-(hex_height/2)
	}

if keyboard_check_pressed(vk_right)
{
	unit_type += 1;	
}

if keyboard_check_pressed(vk_left)
{
	unit_type -= 1;	
}

if keyboard_check_pressed(ord("B")) && keyboard_check(vk_shift)
{	
	switch(unit_type)
	{
		//grenedier
		case 1:
		if (population >= grenadier_pcost) && (manpower >= grenadier_mpcost) && (energy >= grenadier_ecost)
		{
			population -= grenadier_pcost;
			manpower -= grenadier_mpcost;
			energy -= grenadier_ecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//lmg
		case 2:
		if (population >= lmg_pcost) && (manpower >= lmg_mpcost) && (energy >= lmg_ecost) && (metal >= lmg_mecost)
		{
			population -= lmg_pcost;
			manpower -= lmg_mpcost;
			energy -= lmg_ecost;
			metal -= lmg_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//mortar
		case 3:
		if (population >= mortar_pcost) && (manpower >= mortar_mpcost) && (energy >= mortar_ecost) && (metal >= mortar_mecost)
		{
			population -= mortar_pcost;
			manpower -= mortar_mpcost;
			energy -= mortar_ecost;
			metal -= mortar_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//sniper
		case 4:
		if (population >= sniper_pcost) && (manpower >= sniper_mpcost) && (energy >= sniper_ecost)
		{
			population -= sniper_pcost;
			manpower -= sniper_mpcost;
			energy -= sniper_ecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//diver
		case 5:
		if (population >= diver_pcost) && (manpower >= diver_mpcost) && (energy >= diver_ecost)
		{
			population -= diver_pcost;
			manpower -= diver_mpcost;
			energy -= diver_ecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//truck
		case 6:
		if (population >= truck_pcost) && (manpower >= truck_mpcost) && (energy >= truck_ecost) && (metal >= truck_mecost)
		{
			population -= truck_pcost;
			manpower -= truck_mpcost;
			energy -= truck_ecost;
			metal -= truck_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//car
		case 7:
		if (population >= car_pcost) && (manpower >= car_mpcost) && (energy >= car_ecost) && (metal >= car_mecost)
		{
			population -= car_pcost;
			manpower -= car_mpcost;
			energy -= car_ecost;
			metal -= car_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//tank
		case 8:
		if (population >= tank_pcost) && (manpower >= tank_mpcost) && (energy >= tank_ecost) && (metal >= tank_mecost)
		{
			population -= tank_pcost;
			manpower -= tank_mpcost;
			energy -= tank_ecost;
			metal -= tank_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//aa_tank
		case 9:
		if (population >= aa_tank_pcost) && (manpower >= aa_tank_mpcost) && (energy >= aa_tank_ecost) && (metal >= aa_tank_mecost)
		{
			population -= aa_tank_pcost;
			manpower -= aa_tank_mpcost;
			energy -= aa_tank_ecost;
			metal -= aa_tank_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//carrier
		case 10:
		if (population >= carrier_pcost) && (manpower >= carrier_mpcost) && (energy >= carrier_ecost) && (metal >= carrier_mecost)
		{
			population -= carrier_pcost;
			manpower -= carrier_mpcost;
			energy -= carrier_ecost;
			metal -= carrier_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//corvette
		case 11:
		if (population >= corvette_pcost) && (manpower >= corvette_mpcost) && (energy >= corvette_ecost) && (metal >= corvette_mecost)
		{
			population -= corvette_pcost;
			manpower -= corvette_mpcost;
			energy -= corvette_ecost;
			metal -= corvette_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//cruiser
		case 12:
		if (population >= cruiser_pcost) && (manpower >= cruiser_mpcost) && (energy >= cruiser_ecost) && (metal >= cruiser_mecost)
		{
			population -= cruiser_pcost;
			manpower -= cruiser_mpcost;
			energy -= cruiser_ecost;
			metal -= cruiser_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//destroyer
		case 13:
		if (population >= destroyer_pcost) && (manpower >= destroyer_mpcost) && (energy >= destroyer_ecost) && (metal >= destroyer_mecost)
		{
			population -= destroyer_pcost;
			manpower -= destroyer_mpcost;
			energy -= destroyer_ecost;
			metal -= destroyer_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//frigate
		case 14:
		if (population >= frigate_pcost) && (manpower >= frigate_mpcost) && (energy >= frigate_ecost) && (metal >= frigate_mecost)
		{
			population -= frigate_pcost;
			manpower -= frigate_mpcost;
			energy -= frigate_ecost;
			metal -= frigate_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//bomber
		case 15:
		if (population >= bomber_pcost) && (manpower >= bomber_mpcost) && (energy >= bomber_ecost) && (metal >= bomber_mecost)
		{
			population -= bomber_pcost;
			manpower -= bomber_mpcost;
			energy -= bomber_ecost;
			metal -= bomber_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//fighter
		case 16:
		if (population >= fighter_pcost) && (manpower >= fighter_mpcost) && (energy >= fighter_ecost) && (metal >= fighter_mecost)
		{
			population -= fighter_pcost;
			manpower -= fighter_mpcost;
			energy -= fighter_ecost;
			metal -= fighter_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
		//straifer
		case 17:
		if (population >= straifer_pcost) && (manpower >= straifer_mpcost) && (energy >= straifer_ecost) && (metal >= straifer_mecost)
		{
			population -= straifer_pcost;
			manpower -= straifer_mpcost;
			energy -= straifer_ecost;
			metal -= straifer_mecost;
			instance_create_layer(hex_x,hex_y,"units",obj_unit)
		}
		break;
		
	}
}





draw_text(mouse_x,mouse_y+16,unit_type);


/*
for(yy = 0; yy < world_width; yy++)
{
	for(xx = 0; xx < world_width; xx++)
	{
		if ds_grid_get(world_grid_unit,xx,yy) > 0
		{
			world_x = round(xx/(hex_width*3/4))
			world_y = round(yy/hex_height)

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
					world_y = ((round((yy+hex_height/2)/hex_height))*hex_height)-(hex_height/2)
			}
			

			switch (ds_grid_get(world_grid_unit,xx,yy))
			{
				case 1:
				instance_create_layer(hex_x,hex_y,"units",obj_unit)
				break;
			}
		}
	}
}