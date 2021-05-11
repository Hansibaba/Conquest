randomize();
seedocean = string_byte_length(get_string("input a seed","Hansiworld"))*651984849810981;
seedhumidity = (seedocean/651984849810981)*987272465
seedtemp = (seedocean/651984849810981)*10226465481951

startoffset = 1;

x = 0 + startoffset;
y=0 + startoffset;

voffset = 1;
hoffset = 1;

octaves =1;
freq = 4;
sea_level = 90;
max_altitude = 200;

surface = surface_create(room_width,room_height);