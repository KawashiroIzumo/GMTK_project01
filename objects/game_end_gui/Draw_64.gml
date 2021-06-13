/// @description Insert description here
// You can write your code in this editor
if(ondraw)
{
	var vx,vy,vc,vh,vw,mx,my,gw,gh,i,j,k,ax,ay,aw,ah,mclick_ing=mouse_check_button(mb_left),mclick_ed=mouse_check_button_released(mb_left);
	mx=device_mouse_x_to_gui(0)
	my=device_mouse_y_to_gui(0)

	gw=display_get_gui_width()
	gh=display_get_gui_height()
	#region 绘制屏幕截图
	draw_set_alpha(1)
	draw_set_color(0)
	draw_rectangle(0,0,window_get_width(),window_get_height(),0)
	draw_set_alpha(1)
	if(sprite_exists(lssprite))
	{
		var xblv=1,yblv=1;
		xblv=display_get_gui_width()/sprite_get_width(lssprite)
		yblv=display_get_gui_height()/sprite_get_height(lssprite)
		draw_sprite_ext(lssprite,0,0,0,xblv,yblv,0,c_white,1)
	}
	#endregion
	#region 绘制返回按钮
	vx=32
	vy=544
	vw=128
	vh=144
	colora=c_white
	if(colora==c_gray)shader_set(shd00_heibai)
	draw_sprite(pause_button,0,vx,vy)
	shader_reset()
	if(colora!=c_gray&&cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh))
	{
		gpu_set_blendmode(bm_add)
		draw_sprite(pause_button,0,vx,vy)
		gpu_set_blendmode(bm_normal)
		if(mclick_ed)
		{
			sound_SE_play(SEgkgf03_sound16,0)
			room_restart()
		}
	}
	vx+=vw+32
	colora=c_white
	if(colora==c_gray)shader_set(shd00_heibai)
	draw_sprite(pause_button,2,vx,vy)
	shader_reset()
	if(colora!=c_gray&&cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh))
	{
		gpu_set_blendmode(bm_add)
		draw_sprite(pause_button,2,vx,vy)
		gpu_set_blendmode(bm_normal)
		if(mclick_ed)
		{
			sound_SE_play(SEgkgf03_sound16,0)
			game_restart()
		}
	}
	#endregion
	#region 返回键
	if(cold==false&&keyboard_check_released(vk_escape))
	{
		sound_SE_play(SEgkgf03_sound16,0)
		instance_destroy()
	}
	#endregion
}
else
{
	black_alpha+=0.01
	draw_set_alpha(min(1,black_alpha))
	draw_set_color(0)
	draw_rectangle(0,0,window_get_width(),window_get_height(),0)
	draw_set_alpha(1)
}