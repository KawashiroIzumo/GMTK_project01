/// @description Insert description here
// You can write your code in this editor
var vx=0,vy=0,vw=room_width,vh=room_height;
draw_set_alpha(1)
draw_set_color(colora)
draw_rectangle(vx,vy,vx+vw,vy+vh,0)

draw_set_alpha(global.stage_progress/global.stage_progress_max)
draw_set_color(colorb)
draw_rectangle(vx,vy,vx+vw,vy+vh,0)

draw_set_alpha(1)
