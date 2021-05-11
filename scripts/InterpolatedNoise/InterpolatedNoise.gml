/// @description InterpolatedNoise(x, y, width, seed)
/// @param x
/// @param y
/// @param width
/// @param seed
function InterpolatedNoise(argument0, argument1, argument2, argument3) {

	var xx = argument0;
	var yy = argument1;
	var width = argument2;
	var seed = argument3;


	var integer_x = GetInt(xx);
	var fractional_x = xx-integer_x;

	var integer_y = GetInt(yy);
	var fractional_y = yy-integer_y;

	var v1 = SmoothNoise(integer_x,     integer_y, width, seed);
	var v2 = SmoothNoise(integer_x + 1, integer_y, width, seed);
	var v3 = SmoothNoise(integer_x,     integer_y + 1, width, seed);
	var v4 = SmoothNoise(integer_x + 1, integer_y + 1, width, seed);

	var i1 = lerp(v1, v2, fractional_x);
	var i2 = lerp(v3, v4, fractional_x);

	return lerp(i1, i2, fractional_y);


}
