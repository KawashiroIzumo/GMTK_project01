/// @description Insert description here
// You can write your code in this editor
var vx,vy,vw,vh,lsdre=180
if(team==0)lsdre=0
if(target_direction>=0)lsdre=target_direction
vx=x
vy=y
vh=8
vw=(jd-1)/2*vh
vx=x+dcos(lsdre-90)*vw
vy=y-dsin(lsdre-90)*vw
for(i=0;i<jd;i++)
{
	a=create_danmaku(vx,vy,c_red,d06_rice,10,lsdre,0,0,-50)
	a.team=team
	if(team==0)
	{
		a.tail=1
		a.tail_ala=10
	}
	vx+=dcos(lsdre+90)*vh
	vy-=dsin(lsdre+90)*vh
}
jd++
alarm[1]=2