/// @description Insert description here
// You can write your code in this editor
var vx,vy,vw,vh;
vx=0;
vy=0;
//draw_rectangle_color(0,0,1280,720,0,0,0,0,0)
if(global.shock>0)
{
	global.shock-=1
	vx=irandom(16)-8
	vy=irandom(16)-8
}
draw_surface(application_surface,vx,vy)
vx=0;
vy=0;
vw=display_get_gui_width();
vh=32;
draw_set_alpha(0.5);
draw_set_color(0);
draw_rectangle(vx,vy,vx+vw,vy+vh,0);
vy=display_get_gui_height()-vh;
draw_rectangle(vx,vy,vx+vw,vy+vh,0);
draw_set_alpha(1);
#region 顶部信息区
draw_set_font(global.font_m)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
var qtext="LIFE："
vx=16
vy=16
draw_text(vx,vy,qtext)
vx+=96
draw_line_width(vx,0,vx,vh,4)
vx+=36
for(i=0;i<global.chara_hp;i++)
{
	draw_sprite(gui_player_hp,0,vx,vy)
	vx+=36
}
#endregion
#region 底部部信息区
draw_set_font(global.font_m)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
var qtext="HEAD："
qtext+=" "
var ls_list_size=0;
if(ds_exists(global.head_list,ds_type_list))ls_list_size=ds_list_size(global.head_list)
qtext+=string(ls_list_size)
if(ls_list_size>=1)
{
	qtext+=" | TOP：【"
	qtext+=global.head_name[global.head_list[| ls_list_size-1]]
	qtext+="】"
}
vx=16
vy=display_get_gui_height()-16
draw_text(vx,vy,qtext)

#endregion