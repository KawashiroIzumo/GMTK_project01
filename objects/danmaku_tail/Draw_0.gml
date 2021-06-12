/// @description Insert description here
// You can write your code in this editor
var flp=1
if(flip)flp=-1
gpu_set_blendmode(bm_add)
if(blend_mode==bm_subtract)gpu_set_blendmode(bm_subtract)
var colorb=make_colour_hsv(color_get_hue(colora),color_get_saturation(colora),max(min(image_alpha*255,255),0)*color_get_value(colora)/255*alarm[3]/life)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*flp,image_yscale,image_angle,colorb,image_alpha)
gpu_set_blendmode(bm_normal)
