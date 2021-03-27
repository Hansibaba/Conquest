randomize();
seedocean = string_byte_length(get_string("input a seed","Hansiworld"))*651984849810981;
seedhumidity = (seedocean/651984849810981)*987272465
seedtemp = (seedocean/651984849810981)*10226465481951
x = 0;
y=0;

octaves =8;
freq = 16;
sea_level = 100;
max_altitude = 200;
spriacity = 7; //must be odd
c = make_color_hsv(0,0,100);

surface = surface_create(room_width,room_height);
