// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function noisefunction(){
var xpos = argument[0];
var ypos = argument[1];
var seed = argument[2];

var x_min = ~~(xpos);
var x_max = x_min + 1;

var y_min = ~~(ypos);
var y_max = y_min + 1;

random_set_seed(getseed(x_min,y_min,seed));
var corner0 = random_range(-1,1);

random_set_seed(getseed(x_min+1,y_min,seed));
var corner1 = random_range(-1,1);

random_set_seed(getseed(x_min,y_min+1,seed));
var corner2 = random_range(-1,1);

random_set_seed(getseed(x_min+1,y_min+1,seed));
var corner3 = random_range(-1,1);

var lerp1 = lerp(corner0,corner1,fade(xpos-x_min));
var lerp2 = lerp(corner2,corner3,fade(xpos-x_min));

return lerp(lerp1,lerp2,fade(ypos-y_min));
}