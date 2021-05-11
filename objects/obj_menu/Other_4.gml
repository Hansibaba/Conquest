/// @description Get Seed for next world
// You can write your code in this editor


var seed = get_string("Enter Seed:","Hansi World");
seed = GetSeedFromString(seed);
WorldCreate(seed, 75, 50)