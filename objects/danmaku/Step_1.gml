/// @description 判定
// You can write your code in this editor
var lstarget,pd=0,flag_destroy=false;
pd=sprite_get_width(sprite_index)/2*0.75*abs(image_xscale)+10
if(team==0)
{
	with(enemy)
	{
		if(point_distance(x,y,other.x,other.y)<=pd+32 && hp>0)
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
				if(global.chara_hp>=1)global.chara_hp-=1
				else
				{
					global.chara_hp=3
					show_message("game over")
					room_restart()
				}
				sound_SE_play(other.hitsound,0)
				sound_SE_play(SE00_water06,0)
				udi=1
				cold=1
				global.shock=15
				instance_create_depth(x,y,depth-1,enemy_death_fx)
				ds_list_clear(global.head_list)
				x=-256
				y=360
				direction=0
				speed=4
				alarm[3]=90
				alarm[4]=180
				with(enemy)
				{
					if(global.boss!=id)instance_destroy()
				}
				with(danmaku)
				{
					flag_destroy=1
				}
			}
			if(!other.udi)
			{
				flag_destroy=1
			}
		}
	}
}
if(flag_destroy)instance_destroy()
