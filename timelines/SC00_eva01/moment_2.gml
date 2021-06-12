///@descr 初始化飞行检测
var lsdis=point_distance(x,y,memory_variable[1],memory_variable[2])
if(lsdis>spd)
{
	speed=spd
	direction=point_direction(x,y,memory_variable[1],memory_variable[2])
	timeline_position--
}
else 
{
	x=memory_variable[1]
	y=memory_variable[2]
	speed=0
	timeline_position=49
	memory_variable[3]=instance_create_layer(x,y,"at_filed_Fx",fsq20sc00_head_rail)
	memory_variable[3].fat=id
}