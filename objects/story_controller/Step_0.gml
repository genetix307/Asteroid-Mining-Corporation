if show_frame<1 {show_frame+=.05}
if wait>0 {wait-=1} //Don't accidentally click on open
var bg_layer=layer_get_id("Background");
var bg_id=layer_background_get_id(bg_layer)

if input_a_anywhere() {
alarm[0]=5	
}

// Intro Scene
if store.story_scene=0 {
    if story_frame>=6 { show_fade+=.025 }
    if show_fade>1 { store.story_scene=1 save_game() room=rm_main_game }

    if story_frame=0 { text_frame="Greetings, employee!\nI'm Evan Dash, trillionaire founder of the Asteroid Mining Corporation and humanity's greatest visionary." }
    if story_frame=1 { text_frame="Our mission is simple, extract the galaxy's resources and deliver shareholder value." }
    if story_frame=2 { text_frame="Asteroids contain unimaginable wealth. Unfortunately, mining them is dangerous and expensive." }
    if story_frame=3 { text_frame="Fortunately, we found a way to reduce costs. We hired you." }
    if story_frame=4 { text_frame="Your job is to destroy asteroids, collect resources, and meet your quotas. Any questions will be deducted from your break." }
    if story_frame=5 { text_frame="Welcome to the team. Remember, here at Asteroid Mining Corporation, the sky isn't the limit. It's a resource deposit." }
    exit
}


