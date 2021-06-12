///@descr 退场检测
if(y>360)
{
	y+=spd*2
}
if(y<360)
{
	y-=spd*2
}
if(y>room_height+spd||y<-spd)
{
	instance_destroy(id,false)
}
else timeline_position--