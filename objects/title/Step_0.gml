// Genetix Studio
if image_alpha < 1 {image_alpha += .025}
if fade > 0 {fade +=.05 image_xscale +=.01}

//Grow 
if grow = 0 and image_xscale > .95 {image_xscale -= .0002 if image_xscale <= .95 {grow = 1}}
if grow = 1 and image_xscale < 1.05 {image_xscale += .0002 if image_xscale >= 1.05 {grow = 0}}
image_yscale = image_xscale

//Next screen
if canSkip=1 and input_any() and clicked=0 {
clicked=1
audio_play_sound(sfx_title_click,1,false)
}

if clicked>0 {fade+=.00005}

if clicked>0 and fade>2 
{
	//if store.story_scene=0 {room=rm_story_default}
	//if store.story_scene>0 {room = rm_worldmap}
	room=rm_menu_upgrades
}
