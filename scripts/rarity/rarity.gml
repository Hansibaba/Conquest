// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rarity(rarityvalue,raritylevel,value){

var rarevalue = argument[0];
var rangevalue = (argument[1]);
var input = argument[2];

var lowvalue = rarevalue - rangevalue;
var highvalue = rarevalue + rangevalue;

if (value > lowvalue) && (input < highvalue)
{
	if (value > lowvalue+(rangevalue/2)) && (input < highvalue-(lowvalue+(rangevalue/2)))
	{
	return false;	
	}
	else
	{
	return true;	
	}
}
else
{
	return false;	
}

}