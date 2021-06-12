/// @description Insert description here
// You can write your code in this editor
nowbgm=global.Fbgm
test_S_op=date_current_datetime()
test_S=0
alarm[0]=60
soundblv=1;
now_bgm_lb=0
now_bgm_le=0
now_bgm_bt=0
if(global.Fbgm>=0)
{
	now_bgm_lb=global.bgm_loop_begin[global.Fbgm]/1000
	now_bgm_le=global.bgm_loop_end[global.Fbgm]/1000
	now_bgm_bt=global.bgm_blend_time[global.Fbgm]/60
}