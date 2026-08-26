
if input_y() {
alarm[0]=2
cursor_game.x=x
cursor_game.y=y
}

greyed_out=0

if hud.game_paused=1 or hud.game_over=1 or hud.game_victory=1 {greyed_out=1}