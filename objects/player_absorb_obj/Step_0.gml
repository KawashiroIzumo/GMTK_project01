/// @description Insert description here
// You can write your code in this editor
with(player_obj)
{
	other.x=x+32
	other.y=y
}
with(enemy)
{
	lsdre=point_direction(other.x,other.y,x,y)
	lsdis=point_distance(other.x,other.y,x,y)
	if(lsdis>=240)continue;
	else if(lsdre>22.5&&lsdre<337.5)continue;
	else
	{
		hp-=50
		if(hp<=0)flag_absorb=1
	}
}
if(alarm[0]<=6)
{
	image_alpha-=0.1
}