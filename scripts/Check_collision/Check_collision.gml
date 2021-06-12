// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function Check_Head_Collision(vx,vy)
{
	if keyboard_check(vk_right)
	   {
			if !place_free(vx + 5, vy) return true;
	   }
	else if keyboard_check(vk_up)
	   {
			if (!place_free(vx, vy - 5) && place_free(vx, vy + 5)) return true;
	   }
	else if keyboard_check(vk_down)
	   {
			if (!place_free(vx, vy + 5) && place_free(vx, vy - 5)) return true;
	   }
	return false;
}