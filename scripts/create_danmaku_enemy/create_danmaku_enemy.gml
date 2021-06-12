// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_danmaku_enemy(vx,vy,hid)
{
	var lsobj=global.head_danmaku_enemy[hid]
	if(!object_exists(lsobj))lsobj=global.head_danmaku_player[hid]

	if(object_exists(lsobj))
	{
		var a=instance_create_layer(vx,vy,"danmaku",lsobj)
		a.team=1
		return a;
	}
	return noone;
}
function create_danmaku_player(vx,vy,hid)
{
	var lsobj=global.head_danmaku_player[hid]
	if(!object_exists(lsobj))lsobj=global.head_danmaku_enemy[hid]

	if(object_exists(lsobj))
	{
		var a=instance_create_layer(vx,vy,"danmaku",lsobj)
		a.team=0
		a.spd=global.head_spd_player[hid]
		return a;
	}
	return noone;
}