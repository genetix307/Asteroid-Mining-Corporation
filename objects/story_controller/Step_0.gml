if show_frame<1 {show_frame+=.05}
if wait>0 {wait-=1} //Don't accidentally click on open
var bg_layer=layer_get_id("Background");
var bg_id=layer_background_get_id(bg_layer)

if input_a_anywhere() {
alarm[0]=5	
}

//Intro Scene
if store.story_scene=0 {
if story_frame>=8 { show_fade+=.025}
if show_fade>1 {store.story_scene=1 save_game() store.current_area="Estarian Woods" room=rm_main_game}	
	
if story_frame=0 {text_frame="The night sky was lit up by the flames of the burning buildings in the village of Edam."}
if story_frame=1 {text_frame="The spawns of the Dark One chased down the villagers young & old, sparing not a soul."}
if story_frame=2 {text_frame="A Knight of Estaria fought back against the Dark Ones minions and managed to escape the village, barely alive."}
if story_frame=3 {text_frame="From the nearby woods, he watched as his home was burned down and those he knew slaughtered by the Dark One." layer_background_change(bg_id,bg_secret_forest) with def_story_prop instance_destroy()}
if story_frame=4 {text_frame="He hid himself in the woods, barely able to walk. Resting only to heal and regain his strength."}
if story_frame=5 {text_frame="The Dark One left, and the village fell to ashes. The Knight knew he must find and stop the Dark One."  layer_background_change(bg_id,bg_burning_village)}
if story_frame=6 {text_frame="In time, feeling better the Knight was able to take post at a lone tower in the woods near the Kingdoms Castle."  layer_background_change(bg_id,bg_title)}
if story_frame=7 {text_frame="He began to sharpen arrows and prepare to defend the keep and the rest of the Kingdom from the armies of darkness approaching..."}
exit
}

//After first Run Scene
if store.story_scene=1 {
if story_frame>=8 { show_fade+=.025}
if show_fade>1 {store.story_scene=2 save_game() room=rm_menu_home}	
	
if story_frame=0 {text_frame="The dark creatures fell back slowly, retreating South into the Dark woods in the distance." layer_background_change(bg_id,bg_secret_forest)}
if story_frame=1 {text_frame="The Tower was in rough shape, on the brink of collapse and would need major repairs."}
if story_frame=2 {text_frame="The Knight packed his satchel and set North towards the Estarian Castle, in hopes to find support and catch his breath."}
if story_frame=3 {text_frame="At the Kingdoms Castle he would be able to purchase materials to upgrade the Tower and make it much stronger." layer_background_change(bg_id,bg_castle)}
if story_frame=4 {text_frame="It would be of great joy to also stop through the local village and have a drink or two at the Tavern." layer_background_change(bg_id,bg_shop)}
if story_frame=5 {text_frame="But the Knight knew that the Dark Ones creatures would be back again soon, and in greater numbers then before."  layer_background_change(bg_id,bg_ironsmith)}
if story_frame=6 {text_frame="The Kingdom of Estaria faced dark days ahead, if not for someone who would fight back."  layer_background_change(bg_id,bg_title)}
if story_frame=7 {text_frame="The Knight began his trek towards the Castle off in the Sunset, knowing better then to stay out in the open once the Moon had risen."}
exit
}

//After first victory
if store.story_scene=2 {
if story_frame>=8 { show_fade+=.025}
if show_fade>1 {store.story_scene=3 save_game() room=rm_demo_cta}	
	
if story_frame=0 {text_frame="The Knight had successfully defended the Tower against the Dark Ones minions!" layer_background_change(bg_id,bg_title)}
if story_frame=1 {text_frame="For the time being the Castle was safe, but he knew this fight wasn't over just yet."}
if story_frame=2 {text_frame="Greater battles at the Tower would be held before it was truly secure, and the Knight would need to continue growing stronger."}
if story_frame=3 {text_frame="The Knight would need the help of the locals to craft greater weapons and hone his skills." layer_background_change(bg_id,bg_ironsmith)}
if story_frame=4 {text_frame="To continue exploring the land of Estaria for resources and to build up supplies." layer_background_change(bg_id,bg_crystal_cavern)}
if story_frame=5 {text_frame="The Knight knew that the Dark One would still attack the villages all around Estaria in the coming days and weeks."  layer_background_change(bg_id,bg_castle)}
if story_frame=6 {text_frame="And so the Knight would take post at other Towers around the Kingdom and fight those battles, and defend the people of Estaria!."}
if story_frame=7 {text_frame="When the enemy attacks were held off, the Knight would travel to the Dark Woods and confront the Dark One once and for all!"}
exit
}



