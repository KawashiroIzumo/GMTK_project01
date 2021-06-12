/// @description Insert description here
// You can write your code in this editor
image_alpha+=0.01
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*flp,image_yscale,image_angle,colora,image_alpha)
gpu_set_blendmode(bm_add)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*flp,image_yscale,image_angle,make_colour_hsv(0,0,max(min(image_alpha*255,255),0)),image_alpha)
gpu_set_blendmode(bm_normal)