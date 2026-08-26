// Genetix Studio
if store.fullscreen=1 {
myName="Full Screen"
greyed_out=0
}

if store.fullscreen=0 {
myName=" Windowed"
greyed_out=0
}

if instance_number(hud)>0 {
if hud.game_paused=0 {instance_destroy()}
}

if input_a() {
alarm[0]=2	
}