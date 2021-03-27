surface_set_target(surface);

if y<room_height
{
	var equator = (room_height/2)
	var equitorial_distance = ((y-equator)/equator)*255
	var equitorial_influence = (power(cos(equitorial_distance/(255/pi)),spriacity)*255)

	while (x < room_width)
	{	
		var height = (noise(x*0.001,y*0.001,freq,octaves,seedocean)*127)+128;
		var humidity = (noise(x*0.001,y*0.001,freq,octaves,seedhumidity)*127)+128;
		var temp = ((noise(x*0.001,y*0.001,freq,octaves,seedtemp)*127)+128)+equitorial_influence;
		
		
		
		if temp > 255
		{
			temp = 255;
		}
		
		if temp < 1
		{
			temp = 1;	
		}
		/*
		if (height > sea_level) and (height < max_altitude)
		{
			c= make_color_hsv(200,150,humidity)
			draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
			c= make_color_hsv(10,150,temp)
			draw_rectangle_color(x+(room_width/4),y,x+1+(room_width/4),y+1,c,c,c,c,false)
			c= make_color_hsv(0,0,height)
			draw_rectangle_color(x+(room_width/4)*2,y,x+1+(room_width/4)*2,y+1,c,c,c,c,false)
		}
		else
		{
			if height < sea_level
			{
				c = make_color_hsv(150,150,50);
				draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)	
				draw_rectangle_color(x+(room_width/4),y,x+1+(room_width/4),y+1,c,c,c,c,false)	
				draw_rectangle_color(x+(room_width/4)*2,y,x+1+(room_width/4)*2,y+1,c,c,c,c,false)	
				draw_rectangle_color(x+(room_width/4)*3,y,x+1+(room_width/4)*3,y+1,c,c,c,c,false)
			}
			
			if height > max_altitude
			{
				c = make_color_hsv(0,0,50);
				draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)	
				draw_rectangle_color(x+(room_width/4),y,x+1+(room_width/4),y+1,c,c,c,c,false)	
				draw_rectangle_color(x+(room_width/4)*2,y,x+1+(room_width/4)*2,y+1,c,c,c,c,false)	
				draw_rectangle_color(x+(room_width/4)*3,y,x+1+(room_width/4)*3,y+1,c,c,c,c,false)
			}
		}*/
		
		
		//adding the altitude, humidity, and temp together
		if (height > sea_level) and (height < max_altitude)
		{
			if (temp > 0) and (temp < 50)
			{
				if (humidity > 0) and (humidity < 127){
				c = make_color_hsv(120,250,250);
				draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
				}
			
				if (humidity >= 127) and (humidity < 255){
				c = make_color_hsv(120,200,200);
				draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
				}
			
			}

			if (temp >= 50) and (temp < 200)
			{
				if (humidity > 0) and (humidity < 127){
				c = make_color_hsv(80,200,200);
				draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
				}
			
				if (humidity >= 127) and (humidity < 255){
				c = make_color_hsv(80,150,150);
				draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
				}
			}
						
			if (temp >= 200) and (temp <= 255)
			{
				if (humidity > 0) and (humidity < 127){
				c = make_color_hsv(50,200,200);
				draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
				}
			
				if (humidity >= 127) and (humidity < 255){
				c = make_color_hsv(50,150,150);
				draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
				}
			}
		}
		else
		{
			if height < sea_level
				{
					c = make_color_hsv(150,200,100);
					draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)	
				}
			
				if height > max_altitude
				{
					c = make_color_hsv(0,0,20);
					draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)	
				}
		}
		/*c = make_color_hsv(0,0,height);
		draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)*/
		
		/*if height < 150 
		{
			if (humidity > 0) and (humidity < 50){
			c = make_color_hsv(0,0,0);
			draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
			}
			
			if (humidity >= 50) and (humidity < 100){
			c = make_color_hsv(0,0,50);
			draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
			}
			
			if (humidity >= 100) and (humidity < 150){
			c = make_color_hsv(0,0,100);
			draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
			}
			
			if (humidity >= 150) and (humidity < 200){
			c = make_color_hsv(0,0,150);
			draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
			}
			
			if (humidity >= 200) and (humidity <= 255){
			c = make_color_hsv(0,0,200);
			draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
			}	
		}
		
		if (height > 0) and (height < 50){
		c = make_color_hsv(0,0,0);
		draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
		}
			
		if (height >= 50) and (height < 100){
		c = make_color_hsv(0,0,50);
		draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
		}
			
		if (height >= 100) and (height < 150){
		c = make_color_hsv(0,0,100);
		draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
		}
			
		if (height >= 150) and (height < 200){
		//c = make_color_hsv(0,0,200);
		c = c_blue;
		draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
		}
			
		if (height >= 200) and (height <= 255){
		//c = make_color_hsv(0,0,250);
		c = c_blue;
		draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,false)
		}*/
		x++;
	}	
	y++
	x=0;
}
surface_reset_target();
draw_surface(surface,0,0);
