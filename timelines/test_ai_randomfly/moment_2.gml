///@descr 动作检测
var pflag=0;
//if(irandom(100)<40)instance_destroy()
//show_message("???")
create_danmaku_enemy(x,y,hid)
memory_variable[4]=irandom(360)
memory_variable[3]--
if(memory_variable[3]<0)
{
	memory_variable[4]=point_direction(x,y,640,360)
	memory_variable[3]=5
	pflag=1
}
if(pflag==0)
{
	speed=spd
	direction=memory_variable[4]
	timeline_position=49
}
if(pflag==1)
{
	speed=spd
	direction=memory_variable[4]
	timeline_position=199
}