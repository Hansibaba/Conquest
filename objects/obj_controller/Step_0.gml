sped = 20+(fov/50)

if keyboard_check(ord("W"))
{
	y -= sped;	
}

if keyboard_check(ord("S"))
{
	y += sped;	
}

if keyboard_check(ord("A"))
{
	x -= sped;	
}

if keyboard_check(ord("D"))
{
	x += sped;	
}

if keyboard_check(vk_down)
{
	if fov < max_fov
	{
		fov += fov_change_speed;
	}
	else
	{
		fov = max_fov;	
	}
}

if keyboard_check(vk_up)
{
	if fov > min_fov
	{
		fov -=fov_change_speed;	
	}
	else
	{
		fov = min_fov;	
	}
}

if keyboard_check_pressed(vk_home)
{
	team += 1;	
}

if keyboard_check_pressed(vk_end)
{
	team -= 1;	
}

var viewmat = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(cam,viewmat);

var projmat = matrix_build_projection_ortho(fov*1.33333333333, fov, 1.0, 32000.0);
camera_set_proj_mat(cam, projmat);



