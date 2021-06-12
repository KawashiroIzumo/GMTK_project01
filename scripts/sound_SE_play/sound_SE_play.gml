///@description sound_SE_play(sid,loop)
///@param sid 需要播放的id号
///@param loop 是否循环
function sound_SE_play_gain(argument0, argument1,gain)
{
	var sid=argument0;
	if(audio_exists(sid)==false)return -1;
	else if(global.cofing_SE_sound<=0)return -1;
	else 
	{
		//show_message("sound="+string(global.cofing_SE_sound))
		var b=audio_play_sound(sid,1,argument1)
		audio_sound_gain(b,global.cofing_SE_sound/100*gain,0)
		return b;
	}

}
function sound_SE_play(argument0, argument1)
{
	return sound_SE_play_gain(argument0, argument1,1)
}
function sound_SE_play_debug(sid,nullvar,loop)
{
	return sound_SE_play(sid,loop)
}
