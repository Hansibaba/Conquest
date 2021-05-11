/// @description UpdateHexProperties()
function UpdateHexProperties() {


	obj_civ_control.HexWidth = obj_civ_control.CellSize;
	obj_civ_control.HexEdgeSize = obj_civ_control.HexWidth/2;
	obj_civ_control.HexHeight = sqrt(3) * obj_civ_control.HexEdgeSize;
	obj_civ_control.HexOffsetWidth = (3/2) * obj_civ_control.HexEdgeSize;
	obj_civ_control.HexOffsetHeight = obj_civ_control.HexHeight/2;

	//estimates
	obj_civ_control.HexHeightCeil = ceil(obj_civ_control.HexHeight);


}
