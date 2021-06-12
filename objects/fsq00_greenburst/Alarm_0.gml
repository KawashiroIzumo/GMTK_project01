/// @description Insert description here
// You can write your code in this editor
if(team==0)
{
	sound_SE_play_gain(sound14_shiled001,0,0.2)
}
for(i=0;i<360;i+=30)
{
	a=create_danmaku(x,y,c_purple,d04_jade_c,6,i+lsdre,0,0,-100)
	a.team=team
	a.alarm[3]=30
	if(team==0)
	{
		a.alarm[3]=60
		a.tail=1
		a.tail_life=10
	}
}
instance_destroy()