/// @description Insert description here
// You can write your code in this editor
a=instance_create_depth(x,y,depth,dlw_head)
a.hid=hid
if(flag_absorb)a.absorb=1
sound_SE_play(sound34_hkdrum,0)
instance_create_depth(x,y,depth-1,enemy_death_fx)