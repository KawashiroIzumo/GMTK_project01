///@descr 喷射子弹
a=create_danmaku_enemy(x,y,hid)
if(instance_exists(player_obj))
{
	a.target_direction=point_direction(x,y,player_obj.x,player_obj.y)
}