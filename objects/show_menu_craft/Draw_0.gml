draw_set_font(font_large_hud)
draw_text_shadow_color(6,4,"Craft Smith",c_white,c_white,c_silver,c_silver)
draw_line_colour(6,48,215,48,c_white,c_silver)
draw_line_colour(6,49,215,49,c_white,c_silver)

draw_line_colour(6,51,214,51,c_white,c_silver)
draw_line_colour(6,52,210,52,c_silver,c_silver)

//Draw Gems
//draw_set_font(font_stats)
//draw_sprite(spr_show_gem,0,15,780)             
//draw_set_color(c_yellow)
//draw_text_shadow_color(30,764,calc_number(store.gems),c_white,c_white,c_white,c_white) 

draw_set_font(font_stats)
//draw_text_shadow_color(286,564,"Good day there, I'd love to help ya...\nI'm a bit backed up right now though.\nCome back another time and we'll get crafting.",c_white,c_white,c_white,c_white)
draw_rectangle_colour(895,499,1180,709,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)
draw_rectangle_colour(895,499,1180,709,c_silver,c_silver,c_silver,c_silver,true)
draw_text_color(900,500,"Crafting Resources",c_yellow,c_yellow,c_yellow,c_yellow,1)
draw_text_color(900,525,"Crystal Shard x"+calc_number(store.have_crystalshard),c_white,c_white,c_white,c_white,.25+store.have_crystalshard)
draw_text_color(900,550,"Bone Shard x"+calc_number(store.have_boneshard),c_white,c_white,c_white,c_white,.25+store.have_boneshard)
draw_text_color(900,575,"Iron Shard x"+calc_number(store.have_ironshard),c_white,c_white,c_white,c_white,.25+store.have_ironshard)
draw_text_color(900,600,"Element Shard x"+calc_number(store.have_elementshard),c_white,c_white,c_white,c_white,.25+store.have_elementshard)
draw_text_color(900,625,"Herbs x"+calc_number(store.have_herbs),c_white,c_white,c_white,c_white,.25+store.have_herbs)
draw_text_color(900,650,"Beast Blood x"+calc_number(store.have_beastblood),c_white,c_white,c_white,c_white,.25+store.have_beastblood)
draw_text_color(900,675,"Oil x"+calc_number(store.have_oil),c_white,c_white,c_white,c_white,.25+store.have_oil)











