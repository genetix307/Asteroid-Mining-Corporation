function reset_progress(){

//MISC
store.game_speed=1.00
store.max_gamespeed=5.00
store.ads_watched=0
store.gem_chest_cooldown=0
store.show_rating=0
store.gems=200
store.current_area=""
store.world_day=1
store.demo_cta=0
store.secret_forest=0
store.mining_wait=0
store.tier=1

//Mining stats
store.mine_time=10
store.mine_speed=1
store.mine_damage=1
store.mine_critical_chance=5
store.mine_critical_multiplier=2
store.mine_multishot_chance=5
store.mine_asteroid_spawn=25
store.mine_asteroid_size=1
store.mine_asteroid_density=1
store.mine_asteroid_gold_chance=5
store.mine_asteroid_diamond_chance=0
store.mine_asteroid_time_extend_chance=0
store.mine_spawn_chance=0

//Game Settings
store.color_scheme=4
store.sfx_volume=1
store.bgm_volume=1
store.bonus_discord=0
store.auto_perk=0
store.auto_crate=0
//store.show_healthbars=0
//store.auto_upgrade=0
store.auto_event=0
store.story_scene=0
store.tutorial=0
store.vsync=0
store.fullscreen=1

//Challenges
store.challenge_a=0
store.challenge_b=2
store.challenge_c=5
store.challenge_flag=0
store.goal_template=0
store.lvl_template=1

//Init Cards
for (var i = 0; i < 99; ++i) {
   store.card[i]=0
} 

//Perm Stats 
store.perm_attack_speed=1.00
store.perm_attack_damage=3
store.perm_maxhp=100
store.perm_dodge_chance=0
store.perm_regen=0
store.perm_killgold=1
store.perm_critical_chance=0
store.perm_critical_multiplier=1.25
store.perm_defense=0
store.perm_lifesteal_chance=0
store.perm_lifesteal_amount=1
store.perm_luck=0
store.perm_attack_range=250
store.perm_knockback=4
store.perm_reflect=0
store.perm_dailygem=0
store.perm_interestrate=1
store.perm_dailygold=0
store.perm_maxinterest=25

//Perm Upgrades
store.cost_perm_attack_damage=10
store.lvl_perm_attack_damage=1
store.cost_perm_attack_speed=10
store.lvl_perm_attack_speed=1
store.cost_perm_max_health=10
store.lvl_perm_max_health=1
store.cost_perm_defense=10
store.lvl_perm_defense=0
store.cost_perm_critical_chance=10
store.lvl_perm_critical_chance=0
store.cost_perm_critical_multiplier=10
store.lvl_perm_critical_multiplier=0
store.cost_perm_regen=10
store.lvl_perm_regen=1
store.cost_perm_dodge=10
store.lvl_perm_dodge=0
store.cost_perm_lifesteal_chance=10
store.lvl_perm_lifesteal_chance=0
store.cost_perm_lifesteal_amount=10
store.lvl_perm_lifesteal_amount=0
store.cost_perm_killgold=10
store.lvl_perm_killgold=1
store.cost_perm_luck=10
store.lvl_perm_luck=0
store.cost_perm_gamespeed=10
store.lvl_perm_gamespeed=1
store.cost_perm_attack_range=10
store.lvl_perm_attack_range=0
store.cost_perm_knockback=10
store.lvl_perm_knockback=0
store.cost_perm_reflect=10
store.lvl_perm_reflect=0
store.cost_perm_dailygem=10
store.lvl_perm_dailygem=0
store.cost_perm_interestrate=10
store.lvl_perm_interestrate=0
store.cost_perm_dailygold=10
store.lvl_perm_dailygold=1
store.cost_perm_maxinterest=10
store.lvl_perm_maxinterest=0

//Inventory
//Battle Items
store.have_potion=10
store.have_megapotion=1
store.have_focuspill=1
store.have_luckyclover=1
store.have_monsterlure=1
store.have_healingsalve=1
store.have_vampirefang=1
store.have_chicken=1
store.have_lampoil=1
store.have_mirror=1
//Seed Items
store.have_seed_pumpkin=0
store.have_seed_herb=0
//Crafting Items
store.have_crystalshard=3
store.have_herbs=3
store.have_beastblood=3
store.have_boneshard=3
store.have_oil=3
store.have_ironshard=3
store.have_elementshard=3
//Arrow Items
store.have_arrow_basic=99999
store.have_arrow_flame=100
store.have_arrow_frost=100
store.have_arrow_heavy=100
store.have_arrow_power=100
store.have_arrow_precision=100
store.have_arrow_vampiric=100
store.have_arrow_bomb=100

//Statistics
store.tier_best_1=1
store.tier_best_2=1
store.tier_best_3=1
store.tier_best_4=1
store.tier_best_5=1

store.tier1_estarianwoods_best=1
store.tier2_estarianwoods_best=1
store.tier3_estarianwoods_best=1

store.tier1_winterhills_best=1
store.tier2_winterhills_best=1
store.tier3_winterhills_best=1

store.tier1_desolatedesert_best=1
store.tier2_desolatedesert_best=1
store.tier3_desolatedesert_best=1

store.tier1_darkwoods_best=1
store.tier2_darkwoods_best=1
store.tier3_darkwoods_best=1

store.total_runs=0
store.enemies_slain=0
store.bosses_slain=0
store.gems_earned=0
store.gold_earned=0
store.challenges_completed=0
store.playtime=0
store.secrets_found=0
store.crystals_mined=0
store.challenge_reward_lvl=1
store.criticals=0
store.blocks=0
store.regened=0
store.absorbed=0
store.lifesteals=0
store.multishots=0
store.damage_dealt=0
store.damage_dealt_hit=0
store.damage_absorbed=0
store.survived=0
store.crates=0
store.hits=0
store.survived_nocards=0
store.mushrooms_harvested=0

//cards 
store.slot_2_unlocked = 0
store.slot_3_unlocked = 0
store.slot_4_unlocked = 0
store.slot_5_unlocked = 0

store.card_cost = 25
store.card_slot_1 = 0
store.card_slot_2 = 0
store.card_slot_3 = 0
store.card_slot_4 = 0
store.card_slot_5 = 0

store.card_inheritance = 0
store.card_lvl_inheritance = 1
store.card_inheritance_used = 0
store.card_sharpened_tip = 0
store.card_lvl_sharpened_tip = 1
store.card_sharpened_tip_used = 0
store.card_critical_gold = 0
store.card_lvl_critgold = 1
store.card_critical_gold_used = 0
store.card_critical_heart = 0
store.card_lvl_critical_heart = 1
store.card_critical_heart_used = 0
store.card_sacrifice = 0
store.card_lvl_sacrifice = 1
store.card_sacrifice_used = 0
store.card_blood_moon = 0
store.card_lvl_blood_moon = 1
store.card_blood_moon_used = 0
store.card_vampiric_wealth = 0
store.card_lvl_vampiric_wealth = 1
store.card_vampiric_wealth_used = 0
store.card_charge = 0
store.card_lvl_charge = 1
store.card_charge_used = 0
store.card_bounty = 0
store.card_lvl_bounty = 1
store.card_bounty_used = 0
store.card_bouncy = 0
store.card_lvl_bouncy = 1
store.card_bouncy_used = 0
store.card_fortified = 0
store.card_lvl_fortified = 1
store.card_fortified_used = 0
store.card_investor = 0
store.card_lvl_investor = 1
store.card_investor_used = 0
store.card_shield_gold = 0
store.card_lvl_shield_gold = 1
store.card_shield_gold_used = 0
store.card_enforcedwalls = 0
store.card_lvl_enforcedwalls = 1
store.card_enforcedwalls_used = 0
store.card_temperedstone = 0
store.card_lvl_temperedstone = 1
store.card_temperedstone_used = 0
store.card_snipeshot = 0
store.card_lvl_snipeshot = 1
store.card_snipeshot_used = 0

//Quests
for (var i = 0; i < 999; ++i) {
   store.quests[i]=0
} 

//Bonus Codes
store.code_payday=0
store.code_kickstart=0
store.code_lotto=0
store.code_blood=0
}