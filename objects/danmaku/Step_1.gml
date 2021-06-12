/// @description 判定
// You can write your code in this editor
var lstarget,pd=0,flag_destroy=false;
pd=sprite_get_width(sprite_index)/2*0.75*abs(image_xscale)+10
if(team==0)
{
	with(enemy)
	{
		if(point_distance(x,y,other.x,other.y)<=pd+32)
		{
			hp+=other.atk
			sound_SE_play_gain(other.hitsound,0,1)
			if(!other.udi)
			{
				flag_destroy=1
				//break;
			}
		}
	}
}
else if(team==1)
{
	with(player_obj)
	{
		if(point_distance(x,y,other.x,other.y)<=pd)
		{
			//hp+=other.atk
			if(!udi)
			{
				sound_SE_play(other.hitsound,0)
				player_hurt()
			}
			if(!other.udi)
			{
				flag_destroy=1
			}
		}
	}
}
if(flag_destroy)instance_destroy()
