///@descr 刷出卡比和朋友们
if(memory_variable[1]>0)
{
	a=create_enemy(memory_variable[2],0,18)
	a.memory_variable[1]=memory_variable[2]
	a.memory_variable[2]=720
	
	a=create_enemy(memory_variable[2],720,18)
	a.memory_variable[1]=memory_variable[2]
	a.memory_variable[2]=0
	
	memory_variable[1]--
	
	memory_variable[2]+=128
	timeline_position=349
}