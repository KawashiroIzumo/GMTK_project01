/// @description Insert description here
// You can write your code in this editor
var lspd=spd,yflag=false,yspeed=0.4,ytarget=6,lsyspeed=yspeed;

function Check_Collision()
{
	var ls_list_size=-1;
	var vx,vy,i;
	if(Check_Head_Collision(x,y)) return true;
	if(ds_exists(global.head_list,ds_type_list))ls_list_size=ds_list_size(global.head_list)
	if(ls_list_size>0)//有头的场合
	{
		vx=x+head_vx_start
		vy=y+head_vy_start
		for(i=0;i<ls_list_size;i++)
		{
			draw_sprite_ext(Sprite74,0,vx,vy,0.5,0.5,0,c_white,1)
			if(head_collision.check_collision(vx,vy)) return true;
			vx+=24
			vy+=head_y_plus*i/8
		}
	}
	return false;
}

if(!cold)
{
	#region 移动处理
	if(keyboard_check(vk_lshift))
	{
		lspd=spd/2
		lsyspeed=yspeed/2
	}
	if(!Check_Collision())
	{
	if(keyboard_check(vk_right))
	{
		x+=lspd;
	}
	if(keyboard_check(vk_left))
	{
		x-=lspd;
	}
	if(keyboard_check(vk_up))
	{
		y-=lspd;
		head_y_plus+=lsyspeed
		if(head_y_plus>ytarget)head_y_plus=ytarget
		yflag=true;
	}
	if(keyboard_check(vk_down))
	{
		y+=lspd;
		head_y_plus-=lsyspeed
		if(head_y_plus<-ytarget)head_y_plus=-ytarget
	
		yflag=true;
	}
	if(!yflag)//没有按上下时，尝试将甩开的头复位
	{
		if(head_y_plus>0)head_y_plus-=yspeed*2
		else if(head_y_plus<0)head_y_plus+=yspeed*2
	
		if(abs(head_y_plus)<yspeed*2)head_y_plus=0
	}
	if(x>=room_width)x=room_width;
	if(x<=0)x=0;
	if(y>=room_height)y=room_height;
	if(y<=0)y=0;
	}
	#endregion
	#region 射击处理
	attack_cold--
	if(attack_cold<0)
	{
		attack_cold=0
		if(keyboard_check(ord("Z")))
		{
			var list_target=-1;
			if(ds_exists(global.head_list,ds_type_list))list_target=ds_list_size(global.head_list)-1
			if(list_target==-1)//没有头的场合
			{
				attack_cold=20
				var a=instance_create_layer(x+32,y,"danmaku",player_absorb_obj)
			}
			else 
			{
				attack_cold=20
				flag_attack=1
			}
		}
		else flag_attack=false
	}
	#endregion
}