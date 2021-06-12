/// @description 发射一发 
// 你可以在此编辑器中写入代码
rdDirection=random(rdDegree)-rdDegree/2;
a=create_danmaku(x,y,c_purple,d04_jade_c,12,rdDirection+0,0,0,-100)
a.team=team
a.alarm[3]=480
projectile++;
if(projectile>=ProjectileCount)
{
	instance_destroy();
}
else
{
	alarm[1]=ProjectileInterval;
}