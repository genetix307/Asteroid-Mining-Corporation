function draw_card(){

//Draw art backdrop
draw_rectangle_colour(x-45,y-57,x+46,y-5,c_black,c_black,c_black,c_black,false)

// 2 - Inheritance
if my_id = 2
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Inheritance") 
draw_sprite(spr_card_art,0,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_inheritance),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Start run with "+calc_number(store.card_lvl_inheritance*100)+" gold.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_inheritance)+"/"+calc_number(store.card_lvl_inheritance+1)) 
}

// 3 - Sharpened Tip
if my_id = 3
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Sharpened Tip") 
draw_sprite(spr_card_art,1,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_sharpened_tip),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Multiply starting damage by x"+string(1 + (store.card_lvl_sharpened_tip*0.25)),14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_sharpened_tip)+"/"+calc_number(store.card_lvl_sharpened_tip+1)) 
}

// 4 - Critical Gold
if my_id = 4
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Critical Gold") 
draw_sprite(spr_card_art,2,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_critgold),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Gain "+calc_number(store.card_lvl_critgold)+" gold on crit.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_critical_gold)+"/"+calc_number(store.card_lvl_critgold+1)) 
}

// 5 - Critical Heart
if my_id = 5
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Critical Heart") 
draw_sprite(spr_card_art,3,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_critical_heart),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Heal "+calc_number(store.card_lvl_critical_heart)+" HP on crit.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_critical_heart)+"/"+calc_number(store.card_lvl_critical_heart+1)) 
}

// 6 - Sacrifice
if my_id = 6
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Sacrifice") 
draw_sprite(spr_card_art,4,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_sacrifice),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Gain "+calc_number(store.card_lvl_sacrifice*3)+" gold when hit.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_sacrifice)+"/"+calc_number(store.card_lvl_sacrifice+1))
}

// 7 - Blood Moon
if my_id = 7
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Blood Moon") 
draw_sprite(spr_card_art,5,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_blood_moon),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Spawn "+calc_number(2+store.card_lvl_blood_moon)+" more enemies per wave.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_blood_moon)+"/"+calc_number(store.card_lvl_blood_moon+1))
}

// 8 - Vampiric Wealth
if my_id = 8
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Vampiric Wealth") 
draw_sprite(spr_card_art,6,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_vampiric_wealth),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Gain "+calc_number(store.card_lvl_vampiric_wealth*50)+" gold every 25 lifesteals.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_vampiric_wealth)+"/"+calc_number(store.card_lvl_vampiric_wealth+1))
}

// 9 - Charge
if my_id = 9
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Charge") 
draw_sprite(spr_card_art,7,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_charge),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Gain "+calc_number(store.card_lvl_charge)+" damage every "+string(20+(5*store.card_lvl_charge))+" kills.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_charge)+"/"+calc_number(store.card_lvl_charge+1))
}

// 10 - Bounty
if my_id = 10
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Bounty") 
draw_sprite(spr_card_art,8,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_bounty),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Gain "+calc_number(store.card_lvl_bounty*2)+" gems every "+string(20+(5*store.card_lvl_bounty))+" kills.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_bounty)+"/"+calc_number(store.card_lvl_bounty+1))
}

// 11 - Bouncy Arrows
if my_id = 11
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Bouncy Arrows") 
draw_sprite(spr_card_art,9,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_bouncy),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Arrows bounce off edge of map "+calc_number(store.card_lvl_bouncy)+" times.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_bouncy)+"/"+calc_number(store.card_lvl_bouncy+1)) 
}

// 12 - Fortify
if my_id = 12
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Fortified")
draw_sprite(spr_card_art,10,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_fortified),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Multiply starting health by x"+string(1 + (store.card_lvl_fortified*0.25)),14,100) 
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_fortified)+"/"+calc_number(store.card_lvl_fortified+1)) 
}

// 13 - Investor
if my_id = 13
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Investor") 
draw_sprite(spr_card_art,11,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_investor),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Gain +"+calc_number(store.card_lvl_investor)+" Gold Per Wave stat each Wave.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_investor)+"/"+calc_number(store.card_lvl_investor+1)) 
}

// 14 - Shield Gold
if my_id = 14
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Shield Gold") 
draw_sprite(spr_card_art,12,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_shield_gold),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Gain "+calc_number(store.card_lvl_shield_gold*15)+" gold every 100 Damage Defended.",13,110)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_shield_gold)+"/"+calc_number(store.card_lvl_shield_gold+1)) 
}

// 15 - Enforced Walls
if my_id = 15
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Enforced Walls") 
draw_sprite(spr_card_art,13,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_enforcedwalls),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Gain "+calc_number(store.card_lvl_enforcedwalls*.50)+" Defense every "+string(20+(5*store.card_lvl_enforcedwalls))+" kills.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_enforcedwalls)+"/"+calc_number(store.card_lvl_enforcedwalls+1))
}

// 16 - Tempered Stone
if my_id = 16
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Temper Stone") 
draw_sprite(spr_card_art,14,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_temperedstone),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+9,"Gain +"+calc_number(1+store.card_lvl_temperedstone)+" Max HP each Wave.",14,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_temperedstone)+"/"+calc_number(store.card_lvl_temperedstone+1)) 
}

// 17 - Snipe Shot
if my_id = 17
{
draw_set_font(font_card)
draw_set_color(c_aqua)
draw_text(x-50,y-74,"Snipe Shot")
draw_sprite(spr_card_art,15,x,y-31)
draw_set_color(c_yellow)
draw_text_ext(x-50,y-4,"Level "+calc_number(store.card_lvl_snipeshot),15,86)
draw_set_color(c_white)
draw_text_ext(x-50,y+7,"Arrows get +"+calc_number(store.card_lvl_snipeshot)+" Damage, +"+calc_number(store.card_lvl_snipeshot)+"% Crit Chance per 100ft traveled.",11,100)
draw_set_color(c_yellow)
draw_text(x-49,y+60,"Level Up: "+calc_number(store.card_snipeshot)+"/"+calc_number(store.card_lvl_snipeshot+1)) 
}
////////////////////////
}