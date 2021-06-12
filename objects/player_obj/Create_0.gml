/// @description Insert description here
// You can write your code in this editor
spd=10;
udi=false
udi_draw_ala=0
cold=false
flag_attack=false
flag_gun_lock=false
ls_pdd_direction=0;
image_xscale=0.5;
image_yscale=0.5;
image_angle=-90
attack_cold=20
head_vx_start=64
head_vy_start=0
head_y_plus=0

head_collision=instance_create_layer(x,y,"player",Head_Collision);

function player_hurt()
{
	if(global.chara_hp>0)global.chara_hp-=1
	else
	{
		global.chara_hp=3
		show_message("game over")
		room_restart()
	}	
	sound_SE_play(SE00_water06,0)
	udi=1
	cold=1
	global.shock=15
	instance_create_depth(x,y,depth-1,enemy_death_fx)
	flag_gun_lock=false
	ds_list_clear(global.head_list)
	x=-256
	y=360
	direction=0
	speed=4
	alarm[3]=90
	alarm[4]=180
	with(enemy)
	{
		if(global.boss!=id)instance_destroy()
	}
	with(danmaku)
	{
		flag_destroy=1
	}
	with(fsq_father)instance_destroy(id,false)
}

