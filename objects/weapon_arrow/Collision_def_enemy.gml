if other.y<=room_height {
tmpCrit=1
if check_critical_chance()>random(100) {tmpCrit=ceil(check_critical_multiplier()) instance_create_depth(x+3,y-12,depth-10,effect_criticalhit)}
audio_play_sound(sfx_enemy_hit,1,false,,,.6+random(.4))
if pierce= 0 {instance_destroy()}

//Knockback
if other.boss=0 {other.y+=knockback*(5*(2/other.hp))}

//Heavy Arrow
if other.boss=0 and hud.current_arrow="Heavy Arrow" {other.y+=10*(5*(2/other.hp))}

//Lifesteal
if check_lifesteal()>random(100) {instance_create_depth(x+5,y-12,depth-10,show_lifesteal) store.hp+=store.lifesteal_amount}

//Perk Boss Slayer
if other.boss=1 and store.perk_lvl_bossslayer>0 {attack_damage+=store.perk_lvl_bossslayer*10}

//Perk Frost Tips
if other.boss=0 and store.perk_lvl_frosttips>0 {
if (store.perk_lvl_frosttips*10)>random(100) {other.frozen=210}
}

//Perk Flame Tips
if other.boss=0 and store.perk_lvl_flametips>0 {
if (store.perk_lvl_flametips*10)>random(100) {other.onfire=300}
}

//Frost Arrow
if other.boss=0 and hud.current_arrow="Frost Arrow" {
if 50>random(100) {other.frozen=210}
}

//Flame Arrow
if other.boss=0 and hud.current_arrow="Flame Arrow" {
if 50>random(100) {other.onfire=300 instance_create_depth(x,y,depth,weapon_fire)}
}

//Bomb Arrow
if hud.current_arrow="Bomb Arrow" {instance_create_depth(x,y,depth-10,weapon_explosion)}

if other.shield<=0 {
other.hp-=attack_damage*tmpCrit
store.damage_dealt+=attack_damage*tmpCrit
if attack_damage*tmpCrit >store.damage_dealt_hit {store.damage_dealt_hit=attack_damage*tmpCrit}
other.damaged=15
if other.boss=0 {
}
instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-5,effect_smoke_small)
instance_create_depth(x-5,y-(32+random(8)),depth,effect_show_damage).myDamage=attack_damage*tmpCrit
instance_destroy()
}

if other.shield>0 {
other.shield-=1
instance_create_depth(x,y-8,depth,effect_show_damage).myDamage=0
instance_destroy()
}

if store.code_blood=1 
{
repeat 2 instance_create_depth(random_range(x-4,x+4),random_range(y-4,y+4),depth-10,blood_splatter)
repeat 1 instance_create_depth(random_range(x-8,x+8),random_range(y-8,y+8),depth-10,gore)	
}

//Card - Golden Shot
if store.card[10]>=1 {hud.goldenshot_count+=1 if hud.goldenshot_count>=30 {hud.goldenshot_count=0 store.gold+=store.card[10] store.gold_earned+=store.card[10]}}

//CUSTOM ENEMY STUFF
//Boss Slime Queen
if other.type="Boss Slime Queen" 
{
if 65>random(100) {makeEnemy=instance_create_depth(random_range(x-100,x+100),other.y-random(100),depth,enemy) makeEnemy.type="Slime"}
}

}