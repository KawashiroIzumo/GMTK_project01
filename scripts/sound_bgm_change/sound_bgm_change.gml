// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sound_bgm_change(bgmid)
{
	global.Fbgm=bgmid
}
function sound_bgm_fadechange(bgmid)
{
	if(bgmid<0)
	{
		global.Fbgm=-1
		return -1
	}
	else if(bgmid==global.Fbgm)return -2
	else
	{
		global.Fbgm=bgmid
		with(bgm_player)
		{
			var lstime=0;
			now_bgm_lb=global.bgm_loop_begin[global.Fbgm]/1000
			now_bgm_le=global.bgm_loop_end[global.Fbgm]/1000
			now_bgm_bt=global.bgm_blend_time[global.Fbgm]/60
			for(i=0;i<10;i++)
			{
				if(global.bgm_channel_fadeout[i]==noone)
				{
					if(nowbgm>=0)
					{
						lstime=audio_sound_get_track_position(global.bgm_channel)
						global.bgm_channel_fadeout[i]=global.bgm_channel
						global.bgm_channel_fadeout_time[i]=300
						global.bgm_channel_fadeout_vol[i]=1
					}
					global.bgm_channel=noone
					if(global.Fbgm<0)
					{
						global.bgm_channel_vol=1
						global.bgm_channle_fadein_time=0
					}
					else 
					{
						var k,j;
						k=global.Fbgm
						for(j=0;j<25;j++)
						{
							if(global.bgm_flocate[k,j]=="")
							{
								continue;
							}
							else
							{
								global.bgm_channel=audio_play_sound(global.bgm_assect[k,j],1,1)
								audio_sound_set_track_position(global.bgm_channel,lstime)
								//show_message(lstime)
								break
							}
						}
						global.bgm_channel_vol=0
						global.bgm_channle_fadein_time=global.bgm_blend_time[k]
						//audio_sound_set_track_position(global.bgm_channel,global.bgm_loop_begin[k]/1000)
						global.bgm_played[k]=true
					}
					break;
				}
			}
			nowbgm=global.Fbgm
		}
		return 1;	
	}
}