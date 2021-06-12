///@description add_cofing_save(flocate)
///@param flocate
function add_cofing_save(argument0) {
	var flocate=argument0;
	ini_open(flocate)
	ini_write_real("con","lang",global.cofing_lang)
	ini_write_real("con","SE_sound",global.cofing_SE_sound)
	ini_write_real("con","BGM_sound",global.cofing_BGM_sound)
	ini_write_real("stage","unlock",global.cofing_stage_unlock)
	ini_write_real("control","keyboard_chara_change",global.keyboard_chara_change)
	ini_write_real("control","keyboard_SC",global.keyboard_SC)
	ini_write_real("control","keyboard_left",global.keyboard_xy_left)
	ini_write_real("control","keyboard_right",global.keyboard_xy_right)
	ini_write_real("control","keyboard_up",global.keyboard_xy_up)
	ini_write_real("control","keyboard_down",global.keyboard_xy_down)
	ini_write_real("control","keyboard_dash",global.keyboard_dash)
	ini_write_real("control","keyboard_punch",global.keyboard_punch)
	ini_write_real("control","keyboard_jump",global.keyboard_jump)
	ini_write_real("control","keyboard_menu",global.keyboard_menu)
	ini_write_real("control","keyboard_talk",global.keyboard_talk)

	ini_write_real("control","gamepad_ok",global.gamepad_ok)
	ini_write_real("control","gamepad_cancel",global.gamepad_cancel)

	ini_close()


}
