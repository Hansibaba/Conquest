/// @description GetSeedFromString(seed string)
/// @param seed string
function GetSeedFromString(argument0) {

	var length = string_length(argument0);
	var value = 0;
	for(var xx = 0; xx < length; xx++)
	{
		value += string_byte_at(argument0,xx);
	}

	return value;


}
