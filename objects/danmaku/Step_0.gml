var a;
if(alarm[3]>0&&alarm[3]<10)image_alpha-=0.1
image_angle=direction+90+rotate
rotate+=rotate_speed
if(rotate<0)rotate+=360
else if(rotate>360)rotate-=360

//尾迹
if(tail>0)
{
	tail_ala++
	if(tail_ala>=tail)
	{
		tail_ala=0
		a=instance_create_depth(x,y,depth+1,danmaku_tail)
		a.sprite_index=sprite_index
		a.image_index=image_index
		a.colora=colora
		a.image_alpha=image_alpha
		a.image_xscale=image_xscale
		a.image_yscale=image_yscale
		a.image_angle=image_angle
		a.blend_mode=blend_mode
		a.flip=flip
		a.alarm[3]=tail_life
		a.life=tail_life
	}
}