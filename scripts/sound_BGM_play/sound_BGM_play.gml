///@description sound_BGM_play(sid,loop)
///@param sid 需要播放的id号
///@param loop 是否循环
function sound_BGM_play(argument0, argument1) {

	var sid=argument0;
	if(audio_exists(sid)==false)return -1;
	//else if(global.cofing_BGM_sound<=0)return -1;
	else 
	{
		//show_message("sound="+string(global.cofing_SE_sound))
		var b=audio_play_sound(sid,1,argument1)
		audio_sound_gain(b,global.cofing_BGM_sound/100,0)
		if(global.gamemode_soundtest)
		{
			var qtext="播放了"+audio_get_name(sid)
			add_echo(qtext,testsound_spr);
		}
		return b;
	}
}
