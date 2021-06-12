/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_add)
draw_self()
gpu_set_blendmode(bm_normal)
var vx,vy,i;
for(i=0;i<20;i++)
{
	if(sprite_exists(funnel_sprite[i])==false)continue
	vx=x+dcos(funnel_dre[i])*funnel_dis[i]
	vy=y-dsin(funnel_dre[i])*funnel_dis[i]
	draw_sprite_ext(funnel_sprite[i],0,vx,vy,-0.5,0.5,0,c_white,1)
	if(onfire)
	{
		funnel_fsq_cold[i]--
		//show_message("i="+string(i)+"  c="+string(funnel_fsq_cold[i]))
		if(funnel_fsq_cold[i]<=0)
		{
			funnel_fsq_cold[i]=funnel_fsq_cold_max[i]
			if(object_exists(funnel_fsq[i]))
			{
				a=instance_create_layer(vx,vy,"danmaku",funnel_fsq[i])
			}
		}
	}
}