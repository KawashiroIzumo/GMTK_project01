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
		global.head_lock[i]=false
		global.head_spd_player[i]=6
	}
	//_________---------------__________________-------------
	i=0
	#region 格林炸裂
	global.head_name[i]="格林炸裂"
	global.head_spr[i]=head00_kailu
	global.head_danmaku_player[i]=pfsq00_greenburst
	global.head_danmaku_enemy[i]=fsq00_greenburst
	global.head_ai[i]=test_ai_randomfly
	global.head_hp[i]=100
	global.head_spd[i]=6
	global.head_spd_player[i]=12
	#endregion
	//_________---------------__________________-------------
	i=1
	#region 深海创伤后遗症
	global.head_name[i]="深海创伤后遗症"
	global.head_spr[i]=head01_nitori
	global.head_danmaku_player[i]=pfsq00_greenburst
	global.head_danmaku_enemy[i]=fsq01_deepscare
	global.head_ai[i]=test_ai_rhit
	global.head_hp[i]=200
	global.head_spd[i]=6
	global.head_spd_player[i]=12
	#endregion
	//_________---------------__________________-------------
	i=2
	#region 懒散波动
	global.head_name[i]="懒散波动"
	global.head_spr[i]=head02_risen
	global.head_danmaku_player[i]=pfsq00_greenburst
	global.head_danmaku_enemy[i]=fsq02_secwave
	global.head_ai[i]=test_ai_hit_n_run
	global.head_hp[i]=100
	global.head_spd[i]=6
	global.head_spd_player[i]=6
	#endregion
	//_________---------------__________________-------------
	i=18
	#region 星剑士
	global.head_name[i]="星剑士"
	global.head_spr[i]=head18_kb
	global.head_danmaku_player[i]=pfsq18_kirby
	global.head_danmaku_enemy[i]=fsq18_starsaber
	global.head_ai[i]=test_ai_rhit
	global.head_hp[i]=100
	global.head_spd[i]=6
	global.head_spd_player[i]=12
	global.head_lock[i]=1
	#endregion
	//_________---------------__________________-------------
	i=12
	#region G胖
	global.head_name[i]="G胖"
	global.head_spr[i]=head12_G
	global.head_danmaku_player[i]=pfsq12_G
	global.head_danmaku_enemy[i]=fsq12_discount
	global.head_ai[i]=test_ai_randomfly
	global.head_hp[i]=100
	global.head_spd[i]=6
	global.head_spd_player[i]=12
	global.head_lock[i]=1
	#endregion
	//_________---------------__________________-------------
	i=20
	#region EVA-01
	global.head_name[i]="初号飞机"
	global.head_spr[i]=head20_shinji
	global.head_danmaku_player[i]=noone
	global.head_danmaku_enemy[i]=noone
	global.head_ai[i]=SC00_eva01
	global.head_hp[i]=10000
	global.head_spd[i]=6
	global.head_spd_player[i]=12
	global.head_lock[i]=1
	#endregion
	//_________---------------__________________-------------
	global.head_num=i+1
}