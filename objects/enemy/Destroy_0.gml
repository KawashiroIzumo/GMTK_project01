/// @description Insert description here
// You can write your code in this editor
a=instance_create_depth(x,y,depth,dlw_head)
a.hid=hid
if(flag_absorb)a.absorb=1
sound_SE_play(sound34_hkdrum,0)
a=instance_create_depth(x,y,depth-1,enemy_death_fx)
if(global.boss==id)
{
	sound_SE_play(se_enep02,0)
	global.boss=noone
	global.shock=30  
	with(a)
	{
		image_xscale=3
		image_yscale=3
	}
	with(danmaku)
	{
		instance_destroy()
	}
	with(enemy)
	{
		instance_destroy()
	}
	with(fsq_father)
	{
		instance_destroy()
	}
	with(player_obj)
	{
		cold=1
		udi=1
	}
	
}
