if hud.game_paused=0 {
image_alpha-=.005*store.game_speed
if image_alpha<=0 {instance_destroy()}
}