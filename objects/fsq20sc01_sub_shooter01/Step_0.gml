/// @description Insert description here
// You can write your code in this editor
//show_message("?")
var a=create_danmaku(x,y,c_red,d35_fish,6,180,0,0,-100)
with(a)
{
	image_xscale=0.3
	image_yscale=image_xscale
	image_speed=1
}
with(player_obj)
{
	if(y<other.y)
	{
		a.direction=45
	}
	else
	{
		a.direction=315
	}
}
a.team=1
a.gravity=0.2
a.gravity_direction=180
instance_destroy()