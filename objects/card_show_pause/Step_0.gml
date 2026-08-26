// Genetix Studio
if my_id = 0 {image_index = 0}
if my_id >1 {image_index = 2}

if my_slot = 0 {my_id = store.card_slot_1}
if my_slot = 1 {my_id = store.card_slot_2}
if my_slot = 2 {my_id = store.card_slot_3}
if my_slot = 3 {my_id = store.card_slot_4}
if my_slot = 4 {my_id = store.card_slot_5}

if instance_number(hud)>0 {
if hud.game_paused=0 {instance_destroy()}
}