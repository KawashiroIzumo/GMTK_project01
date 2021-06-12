/// @description Insert description here
// You can write your code in this editor
if(udi)
{
	udi_draw_ala++
	if(udi_draw_ala>1)
	{
		udi_draw_ala=0
		shader_set(shd00_heibai)
	}
}
draw_self()
shader_reset()
var vx,vy,i;
if(keyboard_check(vk_lshift))
{
	draw_sprite_ext(gui_pdd,0,x,y,1,1,ls_pdd_direction,c_white,1)
	ls_pdd_direction+=6
	if(ls_pdd_direction>360)ls_pdd_direction-=360
}
#region 绘制头部
var ls_list_size=-1;
if(ds_exists(global.head_list,ds_type_list))ls_list_size=ds_list_size(global.head_list)
if(ls_list_size>0)//有头的场合
{
	vx=x+head_vx_start
	vy=y+head_vy_start
	for(i=0;i<ls_list_size;i++)
	{
		draw_sprite_ext(global.head_spr[global.head_list[| i]],0,vx,vy,0.5,0.5,0,c_white,1)
		if(flag_attack)
		{
			if(i==ls_list_size-1)
			{
				var lsdre=point_direction(x,y,vx,vy);
				var hid=global.head_list[| i]
				a=create_danmaku_player(vx,vy,hid)
				a.direction=lsdre
				a.hid=hid
				a.pfsqRESET()
				ds_list_delete(global.head_list,i)
				flag_attack=0
				break
			}
		}
		vx+=24
		vy+=head_y_plus*i/8
		
	}
}
#endregion