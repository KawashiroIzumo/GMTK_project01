if(ondraw&&l_warning>=0&&type==0)
{
	var colorb=c_red;
	if(atk>0)colorb=c_lime;
    draw_line_width_colour(x,y,x+dcos(l_direction)*l_long,y-dsin(l_direction)*l_long,3,c_red,c_black)
}
if(ondraw&&l_warning<0)
{
	var vx,vy;
	if(type==0)
	{
		if(instance_exists(l_father))
		{
			x=l_father.x
			y=l_father.y
		}
		ex=x+dcos(l_direction)*l_long
		ey=y-dsin(l_direction)*l_long
	}
	else
	{
		if(instance_exists(wl_fat))
		{
			ex=wl_fat.x
			ey=wl_fat.y
		}
		else
		{
			ex=x
			ey=y
		}
	}
	vx=ex+dcos(l_direction)*l_long
	vy=ey-dsin(l_direction)*l_long
    if(type==0)
    {
		if(sprite_exists(l_texture))
		{
			var vw=sprite_get_width(l_texture)*2,vh=sprite_get_height(l_texture),i;
			for(i=0;i+vw<=l_long;i+=vw/2)
			{
				draw_sprite_ext(l_texture,image_index,x+dcos(l_direction)*i,y-dsin(l_direction)*i,1,l_wide/vh,l_direction,c_white,1)
			}
		}
        else
        {
			var vw=256,vh=64,blv=l_long/vw;
			i=(vh-16)*blv;
			draw_sprite_ext(lsp_default,image_index,x+dcos(l_direction)*i,y-dsin(l_direction)*i,blv,l_wide/vh,l_direction,c_ltgray,1)
			gpu_set_blendmode(bm_add)
			draw_sprite_ext(lsp_default,image_index,x+dcos(l_direction)*i,y-dsin(l_direction)*i,blv,l_wide/vh,l_direction,l_colora,1)
			gpu_set_blendmode(bm_normal)
        }
    }
    else if(type==2)
    {
        gpu_set_blendmode(bm_add)
        colorb=make_colour_hsv(colour_get_hue(l_colora),colour_get_saturation(l_colora),colour_get_value(l_colora)*min(1,l_life/30))
        draw_set_colour(colorb)
        if(instance_exists(wl_fat))
        {
            draw_line_width_colour(x,y,wl_fat.x,wl_fat.y,l_wide,colorb,colorb)
        }
        else draw_circle(x,y,l_wide,0)
        gpu_set_blendmode(bm_normal)
        //draw_self()
    }
	l_direction+=rotate_speed
}
else if(ondraw)
{
	if(type==0)
	{
		if(instance_exists(l_father))
		{
			x=l_father.x
			y=l_father.y
		}
	}
	if(instance_exists(light_obj))
	{
		light_obj.Set(l_wide*3,l_direction,l_long,l_colora,1)
	}
}
//draw_self()


