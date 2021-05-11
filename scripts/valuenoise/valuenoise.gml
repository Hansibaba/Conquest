// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function valuenoise(){
var xpos = argument[0];
var ypos = argument[1];
var freq = argument[2];
var octaves = argument[3];
var seed = argument[4];

var result = 0;
var amplitude = 1;
var max_val = 0;

for (var i  = 0; i<octaves; i++)
{
	result += noisefunction(xpos*freq,ypos*freq,seed)*amplitude;	
	max_val += amplitude;
	amplitude *= 0.5;
	freq *= 2;
}
return result/max_val
}