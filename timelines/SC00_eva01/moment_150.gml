///@descr 动作检测
var pflag=0;

if(!instance_exists(memory_variable[3]))
{
	memory_variable[3]=instance_create_layer(x,y,"at_filed_Fx",fsq20sc00_head_rail)
	memory_variable[3].fat=id
}
else with(memory_variable[3])
{
	onfire=0
}
pflag=choose(0,1,2)

if(pflag==0)//开火闲逛
{
	with(memory_variable[3])
	{
		onfire=1
	}
	timeline_position=199
}
if(pflag==1)//关火闲逛
{
	timeline_position=199
}
if(pflag==2)//凯露大群
{
	memory_variable[1]=6
	timeline_position=299
}