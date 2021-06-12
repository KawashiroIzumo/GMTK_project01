/// @description Insert description here
// You can write your code in this editor
with(player_obj)flag_gun_lock=false
with(dlw_father)absorb=1
if(ds_exists(global.head_list,ds_type_list))
{
	var lssize=ds_list_size(global.head_list)
	if(lssize>=1)
		ds_list_delete(global.head_list,lssize-1)
}