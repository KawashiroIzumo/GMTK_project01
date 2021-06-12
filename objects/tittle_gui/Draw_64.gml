/// @description Insert description here
// You can write your code in this editor
var vx,vy,vc,vh,vw,mx,my,gw,gh,i,j,k,ax,ay,aw,ah,mclick_ing=mouse_check_button(mb_left),mclick_ed=mouse_check_button_released(mb_left);
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)

gw=display_get_gui_width()
gh=display_get_gui_height()
#region 宇宙背景
vw=sprite_get_width(tittle_bak_universe)
draw_sprite(tittle_bak_universe,0,bak_vx,0)
draw_sprite(tittle_bak_universe,0,bak_vx+vw,0)
bak_vx-=1
if(bak_vx<-vw)bak_vx+=vw
#endregion
#region 计算缓动
bx=0
by=0
if(alarm[3]>0)
{
	var vc=animcurve_get_channel(gui_ease_in,"ease_bounce1");
	by=1-animcurve_channel_evaluate(vc,1-alarm[3]/30)
}
#endregion
#region 绘制标题文本
vx=bx+28
vy=-by*192
draw_sprite(tittle_bak_text,0,vx,vy)
#endregion
#region 黄旭东
//绘制孙一峰
vx=1001
vy=469
draw_sprite(tittle_f91,0,vx,vy)
//绘制黄旭东脚下的盘子
vx=1049
vy=462
gpu_set_blendmode(bm_add)
draw_sprite(tittle_bak_floor,0,vx,vy)
gpu_set_blendmode(bm_normal)
//绘制黄旭东
vx=1063
vy=309
/*
lsspr=thca1504_kishin_stand
if(p_page==1)lsspr=thca1504_kishin_read
if(p_page==2)lsspr=thca1504_kishin_think
draw_sprite_ext(lsspr,image_index,vx,vy,-1,1,0,c_white,1)
*/
#endregion
#region 功能区
vx=0
vy=512-by*64
vw=128
vh=144
draw_set_alpha(1-by)
draw_sprite(tittle_bak_linw,0,vx,vy)
vy-=32
vx+=64
for(i=0;i<3;i++)
{
	colora=c_white
	if(p_page>=0&&p_page!=i)colora=c_gray
	if(colora==c_gray)shader_set(shd00_heibai)
	draw_sprite(tittle_button,i,vx,vy)
	shader_reset()
	if(colora!=c_gray&&cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh))
	{
		gpu_set_blendmode(bm_add)
		draw_sprite(tittle_button,i,vx,vy)
		gpu_set_blendmode(bm_normal)
		if(mclick_ed)
		{
			sound_SE_play(SEgkgf03_sound16,0)
			if(p_page==i)
			{
				if(p_page==1)
				{
					add_cofing_save(working_directory+"\\a_cofing.ini");
				}
				p_page=-1
			}
			else
			{
				if(i==0)room_goto_next()
				else if(i==2)game_end()
				else p_page=i
			}
		}
	}
	vx+=vw+32-(64+32*i)*by
}
draw_set_alpha(1)
#endregion
#region 通常界面操作设置
if(p_page==-1)
{
	p_index=-1
}
#endregion
#region 设置界面
if(p_page==1)
{
	global.bgm=noone
	vx=32
	vy=320
	draw_sprite(tittle_setting_bak,0,vx,vy)
	var vtarget=["cofing_BGM_sound","cofing_SE_sound"];
	vx=224
	vy=320
	vw=448
	vh=64
	for(i=0;i<2;i++)//绘制调节旋钮
	{
		draw_set_color(c_white)
		if(!mclick_ing)p_index=-1
		else if(p_index==-1&cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh))p_index=i
		if(p_index==i)
		{
			draw_set_color(c_yellow)
			j=max(0,min(100,(mx-vx)/vw*100))
			if(abs(variable_global_get(vtarget[i])-j)>=0.5)
			{
				if(i==0)sound_BGM_play(choose(sound12_piano1,sound13_piano2,sound14_piano3),0)
				else sound_SE_play(sound31_crow2,0)
			}
			variable_global_set(vtarget[i],j)
		}
		ax=vx+variable_global_get(vtarget[i])/100*vw
		draw_circle(ax,vy+vh/2,16,0)
		vy+=vh
	}
	 
	//绘制退出按钮
	vx=768
	vy=320
	vw=64
	vh=128
	draw_sprite(tittle_setting_exit,0,vx,vy)
	if(cold==false&&p_index==-1&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh))
	{
		gpu_set_blendmode(bm_add)
		draw_sprite(tittle_setting_exit,0,vx,vy)
		gpu_set_blendmode(bm_normal)
		if(mclick_ed)
		{
			sound_SE_play(SEgkgf03_sound16,0)
			p_page=-1
			add_cofing_save(working_directory+"\\a_cofing.ini");
		}
	}
}
#endregion
#region 返回键
if(cold==false&&keyboard_check_released(vk_escape))
{
	if(p_page!=-1)
	{
		sound_SE_play(SEgkgf03_sound16,0)
		p_page=-1
		add_cofing_save(working_directory+"\\a_cofing.ini");
	}
}
#endregion