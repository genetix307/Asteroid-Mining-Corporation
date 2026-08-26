//image_speed = .05
depth = -100101

// Start cursor at mouse position
x = device_mouse_x(0);
y = device_mouse_y(0);
x= room_width-60
y= room_height-60

// Track if player is using controller
using_controller = false;

// Cursor movement speed (for analog stick)
cursor_speed = 11;
show_fade=1
game_paused=0

window_set_cursor(cr_none);

//SET MUSIC
set_music()

//Mining
//if room=rm_crystal_cavern {sprite_index=spr_cursor_pickaxe}