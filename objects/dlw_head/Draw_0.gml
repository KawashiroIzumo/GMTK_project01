/// @description Insert description here
// You can write your code in this editor
if(hid<0)instance_destroy()
else
{
	draw_sprite_ext(global.head_spr[hid],0,x,y,0.6,0.6,ls_rotate,c_white,image_alpha)
	draw_sprite_ext(sprite_index,0,x,y,1,1,ls_rotate,c_white,image_alpha)
	ls_rotate+=6
	if(ls_rotate>360)ls_rotate-=360
}