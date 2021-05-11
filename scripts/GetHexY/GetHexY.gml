/// @description GetHexY(gridX, gridY)
/// @param gridX
/// @param gridY
function GetHexY(argument0, argument1) {


	var hexY = obj_civ_control.HexHeight * argument1;

	if (!IsEven(argument0))
	{
		hexY += obj_civ_control.HexHeight/2;
	}

	return (hexY);


}
