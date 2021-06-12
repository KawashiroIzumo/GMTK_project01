/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

// Inherit the parent event
event_inherited();
var i;
with(fat)
{
	vx=x+head_vx_start
	vy=y+head_vy_start
	for(i=0;i<ls_list_size;i++)
	{
		if(i==ls_list_size-1)
		{
			other.x=vx
			other.y=vy
			break;
		}
		vx+=24
		vy+=head_y_plus*i/8
	}
}