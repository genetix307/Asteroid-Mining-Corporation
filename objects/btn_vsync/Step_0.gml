// Genetix Studio
if store.vsync=1 {
myName="Vsync On"
greyed_out=0
}

if store.vsync=0 {
myName="Vsync Off"
greyed_out=1
}

if instance_number(hud)>0 {
if hud.game_paused=0 {instance_destroy()}
}

if input_a() {
alarm[0]=2	
}