///@descr 初始化飞行检测
var lsdis=point_distance(x,y,memory_variable[1],memory_variable[2])
if(lsdis>spd)
{
	speed=spd
	direction=point_direction(x,y,memory_variable[1],memory_variable[2])
	if(instance_exists(memory_variable[3])==false)
	{
		memory_variable[3]=create_danmaku_enemy(x,y,hid)
		memory_variable[3].fat=id
	}
	timeline_position--
}
else 
{
	x=memory_variable[1]
	y=memory_variable[2]
	speed=0
	timeline_position=49
}