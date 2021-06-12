function init_cofing() 
{
	init_con_cofing_reset()
	init_keyboard_reset()
	var flocate=working_directory+"\\a_cofing.ini";
	if(file_exists(flocate))
	{
		ini_open(flocate)
		global.cofing_lang=ini_read_real("con","lang",0)
		global.cofing_SE_sound=ini_read_real("con","SE_sound",100)
		global.cofing_BGM_sound=ini_read_real("con","BGM_sound",100)
		global.cofing_stage_unlock=ini_read_real("stage","unlock",0)
		global.keyboard_chara_change=ini_read_real("control","keyboard_chara_change",global.keyboard_chara_change)
		global.keyboard_SC=ini_read_real("control","keyboard_SC",global.keyboard_SC)
		global.keyboard_xy_left=ini_read_real("control","keyboard_left",global.keyboard_xy_left)
		global.keyboard_xy_right=ini_read_real("control","keyboard_right",global.keyboard_xy_right)
		global.keyboard_xy_up=ini_read_real("control","keyboard_up",global.keyboard_xy_up)
		global.keyboard_xy_down=ini_read_real("control","keyboard_down",global.keyboard_xy_down)
		global.keyboard_dash=ini_read_real("control","keyboard_dash",global.keyboard_dash)
		global.keyboard_punch=ini_read_real("control","keyboard_punch",global.keyboard_punch)
		global.keyboard_jump=ini_read_real("control","keyboard_jump",global.keyboard_jump)
		global.keyboard_menu=ini_read_real("control","keyboard_menu",global.keyboard_menu)
		global.keyboard_talk=ini_read_real("control","keyboard_talk",global.keyboard_talk)
		global.gamepad_ok=ini_read_real("control","gamepad_ok",global.gamepad_ok)
		global.gamepad_cancel=ini_read_real("control","gamepad_cancel",global.gamepad_cancel)
		ini_close()
	}
	else
	{
		add_cofing_save(flocate);
	}



}
