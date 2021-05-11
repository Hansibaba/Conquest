/// @description RandomFloat(seed)
/// @param x
/// @param  y
/// @param  seed
function RandomFloat(argument0) {

	var xx = (argument0<<13)^argument0;

	return (((1 - ((xx* (xx * xx * 15731 + 789221) + 1376312589) &  2147483647) / 1073741824.0))+1)/2;


}
