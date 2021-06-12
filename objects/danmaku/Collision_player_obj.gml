with (other)
{
	var bati=false,j=global.chara_now,i,sid;
	for(i=0;i<10;i++)
	{
		sid=global.chara_buff[j,i]
		if(sid>=0)
		{
			bati=global.buff_bati[sid]
			if(bati)break
		}
	}
	///受击判定
	if(!udi)
	{
		dmg=other.atk*workout_danmage_blv(global.chara_now)*workout_danmage_blv_element(global.chara_now,other.element)
		if(dmg<0)
		{
			if(other.element>=0)
			{
				//show_message("")
				add_buff_chara(other.element,360,0,global.chara_now)
			}
		}
	    global.chara_hp[global.chara_now]+=dmg
		if(bati==false&&other.fatk<0)
		{
			global.fleld+=other.fatk
		    if(global.fleld<=0)alarm[5]=1
		    else alarm[3]=30//fleld恢复的时间
			player_hurt_function()
		}
		if(dmg!=0)
		{
			sound_SE_play( other.hitsound,0)
			a=instance_create_layer(x,y,"danmage",danmage_drawing)
			a.type=2
			a.dmg=dmg
			a.element=other.element
		}
		with(evaluater)
		{
			ev_hurt+=min(0,other.dmg)*-1
		}
	    alarm[4]=5
	    blend_scope=c_red
	}
	else
	{
	    b=irandom(100)
	    if(b<=33)sound_SE_play_debug(sound13_shiled003,1,0)
	    else if(b<=67)sound_SE_play_debug(sound14_shiled001,1,0)
	    else sound_SE_play_debug(sound15_shiled002,1,0)
	}
	if(!other.udi)
	    with(other)instance_destroy()



}
