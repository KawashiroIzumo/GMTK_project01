///@descr 初始化飞行检测
var lsdis=point_distance(x,y,memory_variable[1],memory_variable[2])
if(lsdis>spd)
{
	speed=spd
	direction=point_direction(x,y,memory_variable[1],memory_variable[2])
	timeline_position--
}
else
	speed=0