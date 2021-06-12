/// @description create_danmaku(x,y,color,pic,speed,direction,gengzong,round_speed,atk)
/// @param x
/// @param y
/// @param color
/// @param pic
/// @param speed
/// @param direction
/// @param gengzong
/// @param round_speed
/// @param atk
function create_danmaku(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) 
{
	var blt,ssrf;
	if(layer_exists(layer_get_id("danmaku")))
	{
		blt=instance_create_layer(argument0,argument1,"danmaku",danmaku)
	}
	else
		blt=instance_create_depth(argument0,argument1,depth,danmaku)
	blt.sprite_index=argument3
	blt.image_index=0
	blt.colora=argument2
	blt.image_speed=0
	blt.speed=argument4
	blt.direction=argument5
	blt.gengzong=argument6
	blt.rotate_speed=argument7
	blt.atk=argument8
	blt.fatk=argument8*2
	blt.image_xscale=1
	blt.image_yscale=1
	return blt



}
