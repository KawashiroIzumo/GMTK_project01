/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var vx,vy,i;
with(fat)
{
	vx=x+head_vx_start
	vy=y+head_vy_start
	for(i=0;i<ls_list_size;i++)
	{
		if(i==ls_list_size-1)
		{
			other.x=vx
			other.y=vy
			break;
		}
		vx+=24
		vy+=head_y_plus*i/8
	}
}
var absorb_speed=8;
with(enemy)
{
	var lsdis=point_distance(x,y,other.x,other.y)
	if(global.boss==id)
	{
		continue;
	}
	else if(lsdis>320)continue;
	else 
	{
		var lsdre=point_direction(x,y,other.x,other.y)
		x+=dcos(lsdre)*absorb_speed
		y-=dsin(lsdre)*absorb_speed
	}
	
	if(lsdis<32)instance_destroy()
}
with(danmaku)
{
	var lsdis=point_distance(x,y,other.x,other.y)
	if(lsdis>320)continue;
	else 
	{
		var lsdre=point_direction(x,y,other.x,other.y)
		x+=dcos(lsdre)*absorb_speed
		y-=dsin(lsdre)*absorb_speed
	}
	if(lsdis<32)instance_destroy()
}