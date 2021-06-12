///@descr 动作判定
var pflag=0;
if(global.stage_running==false)pflag=0//如果处于冷却期就暂不刷怪
else
{
	pflag=1
}
if(pflag=0)
{
	timeline_position--
}
if(pflag=1)//刷一个测试用的敌人
{
	timeline_position=49
}