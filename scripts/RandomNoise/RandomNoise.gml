/// @description RandomNoise(x, y, width, seed)
/// @param x
/// @param y
/// @param width
/// @param seed
function RandomNoise(argument0, argument1, argument2, argument3) {

	//random_set_seed((argument0*100)+argument1);
	//return random_range(0,1);

	return RandomFloat(GetSeedFromCoordinates(argument0, argument1, argument2, argument3));


	/*

	var num = 0;
	argument0+=sin(argument1);
	argument0*=3.41345135;
	argument1 = (argument1*565.13413 mod (13.5431+argument0))+sin(argument0);
	var maxI = 6;
	for(var i = 0;i<maxI;i++)
	{
	    num += frac((cos(argument1+sqr(i))*(argument2*54.3143523))) mod 4.12;
	}

	num = (clamp(num/(i-(maxI/1.5))*5,-1,1)+1)/2;

	return num;
	*/


}
