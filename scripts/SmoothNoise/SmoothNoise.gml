/// @description SmoothNoise(x, y, width, seed)
/// @param x
/// @param y
/// @param width
/// @param seed
function SmoothNoise(argument0, argument1, argument2, argument3) {

	var xx = argument0;
	var yy = argument1;
	var width = argument2;
	var seed = argument3;

	var corners = ( RandomNoise(xx-1, yy-1, width, seed)+RandomNoise(xx+1, yy-1, width, seed)+RandomNoise(xx-1, yy+1, width, seed)+RandomNoise(xx+1, yy+1, width, seed) ) / 16;
	var sides   = ( RandomNoise(xx-1, yy, width, seed)  +RandomNoise(xx+1, yy, width, seed)  +RandomNoise(xx, yy-1, width, seed)  +RandomNoise(xx, yy+1, width, seed) ) /  8;
	var center  =  RandomNoise(xx, yy, width, seed) / 4;

	return corners + sides + center;


}
