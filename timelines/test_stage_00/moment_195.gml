///@descr 刷出受兔方阵
if(memory_variable[1]>0)
{
	a=create_enemy(1280,360-memory_variable[2],2)
	a.memory_variable[1]=memory_variable[3]
	a=create_enemy(1280,360+memory_variable[2],2)
	a.memory_variable[1]=memory_variable[3]
	memory_variable[1]--
	memory_variable[3]+=48
	memory_variable[2]-=16
	timeline_position=179
}