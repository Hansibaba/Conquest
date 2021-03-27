// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function noise(){
var xPos =argument[0];
var yPos = argument[1];
var freq = argument[2];
var octaves = argument[3];
var seed = argument[4];

var result = 0;
var amplitude = 1;
var max_val = 0;
for (var i = 0; i<octaves; i++)
{
	result += noisefunction(xPos*freq,yPos*freq,seed)*amplitude;
	max_val += amplitude;
	amplitude *= 0.5;
	freq *= 2;

}
return result/max_val
}