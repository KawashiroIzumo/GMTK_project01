///@descr 动作判定
var pflag=0;
if(global.stage_running==false)pflag=0//如果处于冷却期就暂不刷怪
else
{
	pflag=choose(1,2,3)
	memory_variable[1]=0
}
if(pflag=0)
{
	timeline_position--
}
if(pflag=1)//凯露大群
{
	timeline_position=49
	memory_variable[1]=5
}
if(pflag=2)//受兔方阵
{
	timeline_position=179
	memory_variable[1]=5
	memory_variable[2]=(irandom(128)+128)
	memory_variable[3]=640
}
if(pflag=3)//河童部队
{
	timeline_position=259
	memory_variable[1]=5
	memory_variable[2]=640-irandom(128)
	memory_variable[3]=128
}