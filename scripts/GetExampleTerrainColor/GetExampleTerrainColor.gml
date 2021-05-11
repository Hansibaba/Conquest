 /// @description GetExampleTerrainColor(scale)
/// @param scale 0-1
function GetExampleTerrainColor(argument0) {

	

	if (argument0 < .52)
	{
		if (argument0 < .4)
		{
			if (argument0 < .36)
			{
				return c_yellow; //forest		
			}
			else
			{
				return c_aqua; //desert
			}
		}
		else
		{
			return c_blue;	//Ocean
		}
	}
	else
	{
		if (argument0 < .55)
		{
				return c_aqua; //Desert	
		}
		else
		{
			if (argument0 < .72)
			{
				if (argument0 < 0.63)
					{
						return c_yellow; //forest	
					}
				
				if (argument0 < 0.66)
					{
						return c_blue; //lakes aka. ocean inside of forest
					}
				if (argument0 < 0.72)
					{
						return c_yellow;	// forest
					}
			}
			else
			{
				if (argument0 < .75)
				{
					return c_green;	//Tundra
				}
				else
				{
					return c_gray;	//Mountain
				}
			}
		}
	}

	//Desert and Tundra are the only tiles that may not touch


}
