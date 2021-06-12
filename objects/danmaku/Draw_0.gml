var flp=1
if(flip)flp=-1
var a=image_alpha
if(team==0)image_alpha/=2
if(blend_mode==bm_normal)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*flp,image_yscale,image_angle,c_white,image_alpha)
gpu_set_blendmode(bm_add)
if(blend_mode==bm_subtract)gpu_set_blendmode(bm_subtract)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*flp,image_yscale,image_angle,make_colour_hsv(color_get_hue(colora),color_get_saturation(colora),max(min(image_alpha*255,255),0)*color_get_value(colora)/255),image_alpha)
gpu_set_blendmode(bm_normal)
image_alpha=a

