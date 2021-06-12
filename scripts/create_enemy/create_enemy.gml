// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_enemy(vx,vy,hid)
{
	var lid=layer_get_id("enemy");
	if(layer_exists(lid)==false)return noone;
	else 
	{
		//show_message("!!!")
		var a=instance_create_layer(vx,vy,lid,enemy)
		a.hid=hid
		enemy_fill(a,hid)
		return a;
	}
}
function enemy_fill(objid,hid)
{
	with(objid)
	{
		//show_message("[[[")
		sprite_index=global.head_spr[hid]
		hp=global.head_hp[hid]
		hpm=hp
		ai_tml=global.head_ai[hid]
		//show_message(timeline_get_name(ai_tml))
		spd=global.head_spd[hid]
		image_xscale=-1
		timeline_index=ai_tml
		timeline_loop=0
		timeline_position=-1
		timeline_running=1
		timeline_speed=1
	}
	return objid
}