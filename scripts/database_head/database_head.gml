// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function database_head()
{
	var i,j;
	for(i=0;i<1024;i++)
	{
		global.head_name[i]="UNDEFINED"
		global.head_spr[i]=head00_kailu
		global.head_danmaku_player[i]=noone
		global.head_danmaku_enemy[i]=noone
		global.head_ai[i]=empty_timeline
		global.head_hp[i]=100
		global.head_spd[i]=6
		global.head_spd_player[i]=6
	}
	//_________---------------__________________-------------
	i=0
	#region 基本头
	global.head_name[i]="测试用基本头"
	global.head_spr[i]=head00_kailu
	global.head_danmaku_player[i]=pfsq00_greenburst
	global.head_danmaku_enemy[i]=fsq00_greenburst
	global.head_ai[i]=test_ai_randomfly
	global.head_hp[i]=100
	global.head_spd[i]=6
	global.head_spd_player[i]=12
	#endregion
	//_________---------------__________________-------------
	global.head_num=i+1
}