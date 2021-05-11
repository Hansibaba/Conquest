/// @description GetGrayScaleColor(scale)
/// @param scale 0-1
function GetGrayScaleColor(argument0) {

	var scale = clamp(argument0, 0, 1);
	return make_color_rgb(255 * scale,255 * scale,255 * scale);


}
