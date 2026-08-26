// Genetix Studio
if 5>random(10) {x+=2*store.game_speed}
if x > room_width+200 {instance_destroy()}
if 1>random(10) {y+=random_range(-2,2)}

depth = -y

if input_a() {
alarm[0]=15
}