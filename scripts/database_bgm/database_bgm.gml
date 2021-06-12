///@description database_bgm()
function database_bgm() {
	var i;
	//********+*****+*******+*****+**+*+***+*****+*******
	for(i=0;i<100;i++)
	{
		global.bgm_name[i]="新宝岛"
		global.bgm_text[i]="新宝岛！"
		for(j=0;j<25;j++)
		{
			global.bgm_flocate[i,j]=""
			global.bgm_fload[i,j]=noone
			global.bgm_assect[i,j]=noone
		}
		global.bgm_blend_time[i]=300//单位：步
		global.bgm_loop_begin[i]=22153//单位：毫秒
		global.bgm_loop_end[i]=22893//单位：毫秒
	
		global.bgm_played[i]=false
	}
	//********+*****+*******+*****+**+*+***+*****+*******
	i=0
	global.bgm_name[i]="战斗曲"
	global.bgm_text[i]=
	@"水桥帕露茜的主题曲
#这个作者很懒，并没有留下简介。"
		j=0
		global.bgm_flocate[i,j]=@"FmodBGM\_8bit_act04_stage01_loop.ogg"
		//global.bgm_fload[i,j]=FMODGMS_Snd_LoadSound(working_directory + global.bgm_flocate[i,j])
		global.bgm_assect[i,j]=_8bit_act04_stage01_loop
	global.bgm_blend_time[i]=100//单位：步
	global.bgm_loop_begin[i]=15136/5//单位：毫秒
	global.bgm_loop_end[i]=(161702-15136)/5//单位：毫秒
	//********+*****+*******+*****+**+*+***+*****+*******
	global.bgm_num=i+1
}
