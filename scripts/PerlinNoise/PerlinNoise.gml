/// @description PerlinNoise(x, y, width, seed, persistence, octaves, scale)
/// @param x
/// @param y
/// @param width
/// @param seed
/// @param persistence
/// @param octaves
/// @param scale
function PerlinNoise(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	var scale = argument6;
	var xx = argument0/scale;
	var yy = argument1/scale;
	var width = argument2;
	var seed = argument3;

	var total = 0;
	var p = argument4;
	var n = argument5;

	for(var i = 0; i < n; i++)
	{
		var frequency = power(15,i);
		var amplitude = power(p,i);
	
		total += InterpolatedNoise(xx * frequency, yy * frequency, width, seed) * amplitude;
	}

	return total;


}
