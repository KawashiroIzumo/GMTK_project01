///@descr G胖商团
if(memory_variable[1]>0)
{
	a=create_enemy(memory_variable[2],0,12)
	a.memory_variable[1]=memory_variable[2]
	a.memory_variable[2]=memory_variable[3]
	
	a=create_enemy(memory_variable[2],720,12)
	a.memory_variable[1]=memory_variable[2]
	a.memory_variable[2]=720-memory_variable[3]
	
	memory_variable[1]--
	
	memory_variable[3]+=16
	memory_variable[2]+=128
	timeline_position=639
}