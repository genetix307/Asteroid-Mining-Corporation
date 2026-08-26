if selected = 1 {
    var pulse = 0.5 + sin(current_time * 0.005) * 0.25
    draw_set_alpha(pulse)
    draw_set_color(c_yellow)
    draw_rectangle(x-sprite_width/2-4, y-sprite_height/2-4, x+sprite_width/2+4, y+sprite_height/2+4, false)
    draw_set_alpha(1)
}

draw_self()

// 2 - Inheritance
if my_id = 2
{
if store.card_inheritance = 0 {image_index = 1}
if store.card_inheritance > 0 {image_index = 2 draw_card()}
}

// 3 - Sharpened Tip
if my_id = 3
{
if store.card_sharpened_tip = 0 {image_index = 1}
if store.card_sharpened_tip > 0 {image_index = 2 draw_card()}
}

// 4 - Critical Gold
if my_id = 4
{
if store.card_critical_gold = 0 {image_index = 1}
if store.card_critical_gold > 0 {image_index = 2 draw_card()}
}

// 5 - Critical Heart
if my_id = 5
{
if store.card_critical_heart = 0 {image_index = 1}
if store.card_critical_heart > 0 {image_index = 2 draw_card()}
}

// 6 - Sacrifice
if my_id = 6
{
if store.card_sacrifice = 0 {image_index = 1}
if store.card_sacrifice > 0 {image_index = 2 draw_card()}
}

// 7 - Blood Moon
if my_id = 7
{
if store.card_blood_moon = 0 {image_index = 1}
if store.card_blood_moon > 0 {image_index = 2 draw_card()}
}

// 8 - Vampiric Wealth
if my_id = 8
{
if store.card_vampiric_wealth = 0 {image_index = 1}
if store.card_vampiric_wealth > 0 {image_index = 2 draw_card()}
}

// 9 - Charge
if my_id = 9
{
if store.card_charge = 0 {image_index = 1}
if store.card_charge > 0 {image_index = 2 draw_card()}
}

// 10 - Bounty
if my_id = 10
{
if store.card_bounty = 0 {image_index = 1}
if store.card_bounty > 0 {image_index = 2 draw_card()}
}

// 11 - Bouncy
if my_id = 11
{
if store.card_bouncy = 0 {image_index = 1}
if store.card_bouncy > 0 {image_index = 2 draw_card()}
}

// 12 - Fortified
if my_id = 12
{
if store.card_fortified = 0 {image_index = 1}
if store.card_fortified > 0 {image_index = 2 draw_card()}
}

// 13 - Investor
if my_id = 13
{
if store.card_investor = 0 {image_index = 1}
if store.card_investor > 0 {image_index = 2 draw_card()}
}

// 14 - Shield Gold
if my_id = 14
{
if store.card_shield_gold = 0 {image_index = 1}
if store.card_shield_gold > 0 {image_index = 2 draw_card()}
}

// 15 - Enforced Walls
if my_id = 15
{
if store.card_enforcedwalls = 0 {image_index = 1}
if store.card_enforcedwalls > 0 {image_index = 2 draw_card()}
}

// 16 - Tempered Stone
if my_id = 16
{
if store.card_temperedstone = 0 {image_index = 1}
if store.card_temperedstone > 0 {image_index = 2 draw_card()}
}

// 17 - Snipe Shot
if my_id = 17
{
if store.card_snipeshot = 0 {image_index = 1}
if store.card_snipeshot > 0 {image_index = 2 draw_card()}
}