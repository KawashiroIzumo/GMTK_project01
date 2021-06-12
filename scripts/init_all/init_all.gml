// Script assets have changed for v2.3.0 see
// 执行全局初始化的脚本
function init_all()
{
	if(variable_global_exists("head_list"))//如果头列表已经存在
	{
		if(ds_exists(global.head_list,ds_type_list))ds_list_destroy(global.head_list);
		//那么释放头部列表
	}
	global.Fbgm=-1;
	sound_bgm_change(-1)
	global.bgm_channel=noone
	global.bgm_channel_vol=1
	global.bgm_channle_fadein_time=0
	for(i=0;i<10;i++)
	{
		global.bgm_channel_fadeout[i]=noone
		global.bgm_channel_fadeout_time[i]=0
		global.bgm_channel_fadeout_vol[i]=1
	}
	global.head_list=ds_list_create();
	global.font_m=font_add("fonts\\SOURCEHANSERIFCN-HEAVY.OTF",18,1,0,0,65535);
	global.font_s=font_add("fonts\\SOURCEHANSERIFCN-HEAVY.OTF",12,1,0,0,65535);
	global.chara_hp=3
	global.stage_running=true
	global.head_list_size_max=24
	global.cofing_BGM_sound=100
	global.cofing_SE_sound=80
	global.gamemode_soundtest=false
	global.shock=0
	global.boss=noone
	database_all()
}