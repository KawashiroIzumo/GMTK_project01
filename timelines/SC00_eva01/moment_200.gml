///@descr 闲逛乱飞的目标设置
var lslist=ds_list_create()
ds_list_add(lslist,180,360,540)
for(i=0;i<3;i++)
{
	if(abs(y-lslist[| i])<=64)
	{
		ds_list_delete(lslist,i)
		break
	}
}
ds_list_shuffle(lslist)
memory_variable[1]=960
memory_variable[2]=lslist[| 0]
ds_list_destroy(lslist)