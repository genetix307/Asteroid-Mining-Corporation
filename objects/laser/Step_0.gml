depth=-y-1000
image_angle=direction
speed=move_speed*store.game_speed
image_alpha+=.075

//Sound Fade
sound_fade+=.005

// Bounds
var left   = 0;
var right  = room_width;
var top    = 0;
var bottom = room_height;

var hit_wall = false;

// Check horizontal walls
if (x <= left || x >= right)
{
    if bounce>0 {direction = 180 - direction;}
    hit_wall = true;
}

// Check vertical walls
if (y <= top || y >= bottom)
{
   if bounce>0 {direction = -direction;}
    hit_wall = true;
}

// Apply bounce logic
if (hit_wall and bounce>0)
{
    bounce -= 1;
    // keep arrow inside bounds so it doesn't get stuck
    x = clamp(x, left + 1, right - 1);
    y = clamp(y, top + 1, bottom - 1);
	
	direction += irandom_range(-4, 4);
	instance_create_depth(x, y,depth, effect_smoke_small);
}

////Snipe Shot Card
//if store.card_slot_1 = 17 or store.card_slot_2 = 17 or store.card_slot_3 = 17 or store.card_slot_4 = 17
//	{
//distance_traveled += speed;
//var stacks = floor(distance_traveled / 50);
//var bonus = stacks * (store.card_lvl_snipeshot);
//attack_damage = base_damage + bonus
//critical_chance = base_crit  + bonus;
		
//	}

if distance_to_object(mine_ship)>5000 {instance_destroy()}