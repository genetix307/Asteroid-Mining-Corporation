// Genetix Studio
draw_self()

if my_id = 0 //Unequipped
{
	draw_set_font(font_stats_tiniest)
	draw_set_color(c_white)
	draw_text(x-42,y-38,"Card Slot "+string(my_slot+1))
	
	if my_slot = 1 and store.slot_2_unlocked = 0 
	{
	draw_text(x-25,y+15,"Unlock")
	draw_text(x+10,y+40,"100")
	draw_sprite(spr_show_gem,0,x-2,y+48)
	}
	
	if my_slot = 2 and store.slot_3_unlocked = 0 
	{
	draw_text(x-25,y+15,"Unlock")
	draw_text(x+10,y+40,"250")
	draw_sprite(spr_show_gem,0,x-2,y+48)
	}
	
	if my_slot = 3 and store.slot_4_unlocked = 0 
	{
	draw_text(x-25,y+15,"Unlock")
	draw_text(x+10,y+40,"500")
	draw_sprite(spr_show_gem,0,x-2,y+48)
	}
	
	if my_slot = 4 and store.slot_5_unlocked = 0 
	{
	draw_text(x-25,y+15,"Unlock")
	draw_text(x+8,y+40,"1000")
	draw_sprite(spr_show_gem,0,x-4,y+48)
	}
}

if my_id > 1 {draw_card()}

