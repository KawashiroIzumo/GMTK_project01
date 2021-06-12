/// @description Insert description here
// You can write your code in this editor
if(image_xscale<1)
{
	image_xscale+=0.02
	image_yscale+=0.02
}
else
{
	image_xscale=1
	image_yscale=1
	for(i=0;i<20;i++)
	{
		if(funnel_dis[i]<240)funnel_dis[i]+=6
		
		funnel_dre[i]+=funnel_rotate_speed
		if(funnel_dre[i]>360)funnel_dre[i]-=360
		if(funnel_dre[i]<0)funnel_dre[i]+=360
	}
}
image_angle+=2
if(image_angle>360)image_angle-=360