/// @description Insert description here
// You can write your code in this editor
if hud.game_paused=0 {
y-=.10
image_alpha -= .075

if image_alpha < 0 {instance_destroy()}
}