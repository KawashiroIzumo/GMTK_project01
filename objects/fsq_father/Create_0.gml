/// @description Insert description here
// You can write your code in this editor
team=0
hid=-1
spd=6
target_direction=-1
function pfsqRESET()
{
	speed=spd
	if(hid>=0)
	{
		sprite_index=global.head_spr[hid]
		image_xscale=0.5
		image_yscale=0.5
	}
}