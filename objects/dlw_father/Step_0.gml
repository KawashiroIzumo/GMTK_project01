/// @description Insert description here
// You can write your code in this editor
if(!cold)
{
	if(instance_exists(player_obj))
	{
		var lsdis=point_distance(x,y,player_obj.x,player_obj.y)
		if(absorb)
		{
			direction=point_direction(x,y,player_obj.x,player_obj.y)
			speed=16
			image_alpha=1
		}
		else 
		{
			x-=4
			image_alpha-=0.002
			if(image_alpha<0.1)instance_destroy()
			if(lsdis<192)absorb=1	
		}
		if(lsdis<32)
		{
			cold=1
			speed=0
			alarm[4]=1
		}
	}
}
else 
{
	speed=0
}