if(debug_mode)
{
	var vx,vy,vw,vh,ax;
	mx=device_mouse_x_to_gui(0)
	my=device_mouse_y_to_gui(0)
	mclick_ed=mouse_check_button_released(mb_left)
	#region 主显示
	vx=16
	vy=16
	vw=512
	vh=16
	ay=40
	draw_set_font(global.font_m)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	if(audio_sound_is_playable(global.bgm_channel))
	{
		draw_set_color(c_black)
		draw_rectangle(vx,vy,vx+vw,vy+vh,0)
		
		var vtime=audio_sound_get_track_position(global.bgm_channel),vmax=audio_sound_length(global.bgm_channel)
		draw_set_color(c_white)
		ax=vx+vw*vtime/vmax
		draw_rectangle(vx,vy,ax,vy+vh,0)
		qtext=string(vtime)
		draw_text(ax,vy+vh+2,qtext)
	
		draw_set_alpha(0.4)
		ax=vx+now_bgm_lb/vmax*vw
		draw_set_color(c_lime)
		draw_rectangle(vx,vy,ax,vy+vh,0)
	
		ax=vx+now_bgm_le/vmax*vw
		draw_set_color(c_red)
		draw_rectangle(ax,vy,vx+vw,vy+vh,0)
		draw_set_color(c_yellow)
		draw_rectangle(ax,vy,ax+now_bgm_bt/vmax*vw,vy+vh,0)
		draw_set_alpha(1)
	}
	draw_set_alpha(1)
	draw_set_color(c_aqua)
	draw_line(vx,vy+ay+vh,vx+vw,vy+ay+vh)
	vy+=vh+ay+4
	for(i=0;i<10;i++)
	{
		draw_set_alpha(1)
		if(audio_sound_is_playable(global.bgm_channel_fadeout[i]))
		{
			draw_set_alpha(global.bgm_channel_fadeout_vol[i])
			draw_set_color(c_black)
			draw_rectangle(vx,vy,vx+vw,vy+vh,0)
			var vtime=audio_sound_get_track_position(global.bgm_channel_fadeout[i]),vmax=audio_sound_length(global.bgm_channel_fadeout[i])
			draw_set_color(c_white)
			ax=vx+vw*vtime/vmax
			draw_rectangle(vx,vy,ax,vy+vh,0)
			qtext=string(vtime)
			draw_text(ax,vy+vh+2,qtext)
		}
		draw_set_alpha(1)
		draw_set_color(c_aqua)
		draw_line(vx,vy+ay+vh,vx+vw,vy+ay+vh)
		vy+=vh+ay+4
	}
	#endregion
	vx=1000
	vy=16
	vw=256
	vh=28
	draw_set_font(global.font_m)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	qtext=global.Fbgm
	draw_set_color(c_dkgray)
	draw_rectangle(vx,vy,vx+vw,vy+vh,0)
	draw_set_color(c_white)
	draw_text(vx+vw/2,vy+vh/2,qtext)
}