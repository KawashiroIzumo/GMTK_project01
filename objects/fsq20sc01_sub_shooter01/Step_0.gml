/// @description Insert description here
// You can write your code in this editor
//show_message("?")
var a=create_danmaku(x,y,c_lime,d00_jade_s,12,180,0,0,-100)
with(player_obj)
{
	if(y<other.y)
	{
		a.direction=150
	}
	else
	{
		a.direction=210
	}
}
a.team=1
instance_destroy()