/// @description Insert description here
// You can write your code in this editor
var vx,vy,vw,vh,lsdre=45
vx=x
vy=y
for(i=0;i<4;i++)
{
	a=create_danmaku(vx,vy,c_aqua,d23_water,10,lsdre+i*90,0,0,-50)
	a.team=team
	if(team==0)
	{
		a.tail=1
		a.tail_ala=10
	}
}
jd++
alarm[1]=6