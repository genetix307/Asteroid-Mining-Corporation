function reset_run(){
//Ingame Stats
store.gold=0
store.current_stage=1
store.xp=0
store.next_level=10
store.level=1
store.enemy_base_level=0
store.tier=1
store.enemies_killed_run=0
store.gems_earned_run=0
store.attack_speed=store.perm_attack_speed
store.attack_damage=store.perm_attack_damage
store.maxhp=store.perm_maxhp
store.hp=store.maxhp
store.dodge_chance=store.perm_dodge_chance
store.regen=store.perm_regen
store.killgold=store.perm_killgold
store.critical_chance=store.perm_critical_chance
store.critical_multiplier=store.perm_critical_multiplier
store.defense=store.perm_defense
store.lifesteal_chance=store.perm_lifesteal_chance
store.lifesteal_amount=store.perm_lifesteal_amount
store.luck=store.perm_luck
store.fury=0
store.attack_range=store.perm_attack_range
store.knockback=store.perm_knockback
store.reflect=store.perm_reflect
store.dailygem=store.perm_dailygem
store.interestrate=store.perm_interestrate
store.dailygold=store.perm_dailygold
store.maxinterest=store.perm_maxinterest

store.run_score=0

//In game Status Effects
store.status_focuspill=0
store.status_luckyclover=0
store.status_mirror=0
store.status_vampirefang=0
store.status_healingsalve=0
store.status_lampoil=0
store.status_monsterlure=0

//InGame Upgrades
store.cost_attack_damage=5
store.lvl_attack_damage=1
store.cost_attack_speed=5
store.lvl_attack_speed=1
store.cost_max_health=5
store.lvl_max_health=1
store.cost_defense=5
store.lvl_defense=1
if store.lvl_perm_defense=0 {store.lvl_defense=0}
store.cost_critical_chance=5
store.lvl_critical_chance=1
if store.lvl_perm_critical_chance=0 {store.lvl_critical_chance=0}
store.cost_critical_multiplier=5
store.lvl_critical_multiplier=1
if store.lvl_perm_critical_multiplier=0 {store.lvl_critical_multiplier=0}
store.cost_regen=5
store.lvl_regen=1
store.cost_dodge=5
store.lvl_dodge=1
if store.lvl_perm_regen=0 {store.lvl_regen=0}
store.cost_lifesteal_chance=5
store.lvl_lifesteal_chance=1
if store.lvl_perm_lifesteal_chance=0 {store.lvl_lifesteal_chance=0}
store.cost_lifesteal_amount=5
store.lvl_lifesteal_amount=1
if store.lvl_perm_lifesteal_amount=0 {store.lvl_lifesteal_amount=0}
store.cost_killgold=5
store.lvl_killgold=1
store.cost_luck=5
store.lvl_luck=1
if store.lvl_perm_luck=0 {store.lvl_luck=0}
store.cost_attack_range=5
store.lvl_attack_range=1
if store.lvl_perm_attack_range=0 {store.lvl_attack_range=0}
store.cost_knockback=5
store.lvl_knockback=1
if store.lvl_perm_knockback=0 {store.lvl_knockback=0}
store.cost_reflect=5
store.lvl_reflect=1
if store.lvl_perm_reflect=0 {store.lvl_reflect=0}
store.cost_dailygem=5
store.lvl_dailygem=1
if store.lvl_perm_dailygem=0 {store.lvl_dailygem=0}
store.cost_interestrate=5
store.lvl_interestrate=1
if store.lvl_perm_interestrate=0 {store.lvl_interestrate=0}
store.cost_dailygold=5
store.lvl_dailygold=1
store.cost_maxinterest=5
store.lvl_maxinterest=1
if store.lvl_perm_maxinterest=0 {store.lvl_maxinterest=0}
//Ingame Perks
store.perk_lvl_bossslayer=0
store.perk_lvl_brawn=0
store.perk_lvl_toughskin=0
store.perk_lvl_swift=0
store.perk_lvl_mended=0
store.perk_lvl_ironwalls=0
store.perk_lvl_sharpshooter=0
store.perk_lvl_miner=0
store.perk_lvl_heavyhitter=0
store.perk_lvl_snakeeyes=0
store.perk_lvl_wisdom=0
store.perk_lvl_flawless=0
store.perk_lvl_tutor=0
store.perk_lvl_limitbreak=0
store.perk_lvl_restoration=0
store.perk_lvl_frosttips=0
store.perk_lvl_flametips=0

//Misc
//store.current_tab=0
//store.bloodmoon=0
}