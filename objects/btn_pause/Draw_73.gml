// Genetix Studio
if hud.game_over = 0 
{
if hud.game_paused = 0 {image_index=0 draw_btn_color() draw_self()}
if hud.game_paused > 0 {image_index=1 draw_btn_color() draw_self()

if instance_number(show_levelup)<=0 and instance_number(btn_specialevents)=0 {
draw_set_color(c_yellow)
draw_text(30,75,"Run Stats:")
draw_set_font(font_stats)
draw_text(30,110,"Attack Range: "+string(calc_number(store.attack_range))+"ft")
draw_text(30,140,"Attack Speed: "+string(calc_number(store.attack_speed))+"")
draw_text(30,170,"Attack Damage: "+string(calc_number(store.attack_damage))+"")
draw_text(30,200,"Knockback: "+string(calc_number(store.knockback))+"ft")
draw_text(30,230,"Critical Multiplier: x"+string(calc_number(store.critical_multiplier))+"")
draw_text(30,260,"Critical Chance: "+string(calc_number(store.critical_chance))+"%")

draw_text(30,290,"Regen: "+string(calc_number(store.regen))+" per wave")
draw_text(30,320,"Reflect: "+string(calc_number(store.reflect))+"%")
draw_text(30,350,"Defense: "+string(calc_number(store.defense)))
draw_text(30,380,"Lifesteal Amount: "+string(calc_number(store.lifesteal_amount))+"")
draw_text(30,410,"Lifesteal Chance: "+string(calc_number(store.lifesteal_chance))+"%")
draw_text(30,440,"Max HP: "+string(calc_number(store.maxhp))+"")

draw_text(30,470,"Daily Gem: "+string(calc_number(store.dailygem))+" per wave")
draw_text(30,500,"Daily Gold: "+string(calc_number(store.dailygold))+" per wave")
draw_text(30,530,"Kill Gold: "+string(calc_number(store.killgold))+"")
draw_text(30,560,"Max Interest: "+string(calc_number(store.maxinterest))+"")
draw_text(30,590,"Interest Rate: "+string(calc_number(store.interestrate))+"%")
draw_text(30,620,"Luck: "+string(calc_number(store.luck))+"%")
}
	}
}