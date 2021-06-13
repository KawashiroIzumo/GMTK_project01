/// @description 发射一发 
// 你可以在此编辑器中写入代码
rdDirection=random(40)-20;
a=create_danmaku(x,y,c_white,d55_discount,6,rdDirection+180,0,0,-100)
a.team=team
a.alarm[3]=120
projectile++;
if(projectile>=ProjectileCount)
{
	instance_destroy();
}
else
{
	alarm[1]=ProjectileInterval;
}