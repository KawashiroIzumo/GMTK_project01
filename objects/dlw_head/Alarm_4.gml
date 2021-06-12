/// @description 收取掉落物的效果
// You can write your code in this editor
if(ds_exists(global.head_list,ds_type_list))
{
	var lssize=ds_list_size(global.head_list)
	if(lssize<global.head_list_size_max)
		ds_list_add(global.head_list,hid)
}
instance_destroy()
