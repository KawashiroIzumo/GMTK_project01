/// @description Insert description here
// You can write your code in this editor
with(fat)
{
	var lsys=24;
	if(instance_exists(player_obj))
	{
		if(abs(y-player_obj.y)<lsys)y=player_obj.y
		else
		{
			y+=sign(player_obj.y-y)*lsys
		}
	}
	other.x=x
	other.y=y
}