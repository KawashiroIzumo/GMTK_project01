///@descr 动作检测
var pflag=0;

if(!instance_exists(memory_variable[7]))
{
	memory_variable[7]=instance_create_layer(x,y,"at_filed_Fx",fsq20sc00_head_rail)
	memory_variable[7].fat=id
}
else with(memory_variable[7])
{
	onfire=0
}
pflag=choose(0,1,2,3)

if(pflag==0||pflag==1)//开火闲逛
{
	with(memory_variable[7])
	{
		onfire=1
	}
	timeline_position=199
}
if(pflag==2)//凯露大群
{
	memory_variable[1]=6
	timeline_position=299
}
if(pflag==3)//G胖商团
{
	timeline_position=639
	memory_variable[1]=2
	memory_variable[2]=720-irandom(128)
	memory_variable[3]=128
}