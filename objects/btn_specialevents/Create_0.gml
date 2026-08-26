// Genetix Studio
depth = -10005
image_speed = 0
image_alpha = .8
greyed_out=0
myName = "Continue"
mytitle=""
myDesc=""
myID = irandom_range(1, 78)
if store.auto_event=1 {alarm[0]=60}

center_cursor()

if myID=1 {
myTitle= "The Ironsmith"
myDesc= "A Silver bearded Ironsmith stays a night at the Tower crossing. As a thank you he offers to sharpen your arrow tips.\n\nGain 4 Attack Damage"
store.attack_damage+=4
}

if myID=2 {
myTitle= "Weak Materials"
myDesc= "You discover the metals you have crafted your arrow tips with were not properly tempered.\n\nLost 5 Attack Damage"
store.attack_damage-=5
if store.attack_damage<1 {store.attack_damage=1}
}

if myID=3 {
myTitle="Stock Rush"
myDesc="Gold investments around the Kingdom are soaring today!\n\nGain 2% Daily Interest Rate"
store.interestrate+=2
}

if myID=4 {
myTitle="Stock Crash"
myDesc="Gold investments around the Kingdom are plummeting!\n\nLost 3% Daily Interest Rate"
store.interestrate-=3
if store.interestrate<0 {store.interestrate=0}
}

if myID=5 {
myTitle="Rabbits Foot"
myDesc="You feel like the stars are aligned recently, things keep going your way.\n\nGain 1% Luck"
store.luck+=1
}

if myID=6 {
myTitle="Shattered Mirror"
myDesc="Things feel off today. Your timing is out of sync and the stars just don't feel aligned at all.\n\nLost 3% Luck"
store.luck-=3
if store.luck<0 {store.luck=0}
}

if myID=7 {
myTitle="Hidden Gold"
myDesc="You discover a loose brick in the wall. Inside is a small pouch full of Gold coins left from years ago.\n\nGained 50 Gold"
store.gold+=50
}

if myID=8 {
myTitle="Fox in the hen house"
myDesc="You wake up to discover that the Tower vault has been broken into. A thief has snuck in and stolen all of your Gold.\n\nLost all Gold"
store.gold=0
}

if myID=9 {
myTitle="Structural Integrity"
myDesc="A structural engineer is passing through the Kingdom gates and points out a structural improvement that can be made along your walls foundation.\n\nGained 15 Max HP"
store.maxhp+=15
store.hp +=15
}

if myID=10 {
myTitle="Ground Tremors"
myDesc="The Earth suddenly shakes violently. The ground splits in spots as an ancient Evil nearby is awakened. The walls foundation is cracked.\n\nLost 25 Max HP"
store.maxhp-=25
store.hp-=25
if store.maxhp<1 {store.maxhp=1 store.hp=1}
}

if myID=11 {
myTitle="Focused Mind"
myDesc="You've been sleeping better the last few nights and notice your focus and vision seem to be sharper then usual.\n\nGained 2% Critical Chance"
store.critical_chance+=2
}

if myID=12 {
myTitle="Brain Fog"
myDesc="You've struggled sleeping lately due to a foggy smoke in the air from nearby fires. You find that your vision is a bit blurry and your aim is a little off.\n\nLost 3% Critical Chance"
store.critical_chance-=3
if store.critical_chance<0 {store.critical_chance=0}
}

if myID=13 {
myTitle="Vampiric"
myDesc="You wake up to the sting of a Bat bite. You feel strange all of a sudden...\n\nGained 3% Lifesteal Chance\nLost All Reflect"
store.lifesteal_chance+=3
store.reflect=0
}

if myID=14 {
myTitle="Heavy Metal"
myDesc="The metals you meld into arrow tips seem heavier than usual after the usual delivery came from a far away mineshaft.\n\nGained 5 Knockback\nGained 1 Attack Damage\nLost .25 Attack Speed"
store.knockback+=5
store.attack_speed-=.25
store.attack_damage+=1
if store.attack_speed<1 {store.attack_speed=1}
}

if myID=15 {
myTitle="Overpopulation"
myDesc="You can't help but notice that even more creatures and baddies seem to be approaching the Tower walls lately. It makes your skin crawl to think about the increasing power of The Dark One.\n\nMore Enemies Spawn each Wave"
hud.extra_spawn+=3
}

if myID=16 {
myTitle="The Traveling Healer"  
myDesc="A traveling healer visits the Tower crossing, offering to patch wounds with rare herbs and poultices.\n\nRegain 50% of Missing HP"  
store.hp += (store.maxhp - store.hp) * 0.50  	
}

if myID=17 {
myTitle="Rust Rot"  
myDesc="The night was damp and foggy. By morning, rust has set into your weapons.\n\nLost 2 Attack Damage\nLost .10 Attack Speed"  
store.attack_damage -= 2  
store.attack_speed -= .10 
if store.attack_damage < 1 {store.attack_damage=1}  
if store.attack_speed < 1 {store.attack_speed=1}  	
}

if myID=18 {
myTitle="Lucky Trader"  
myDesc="A wandering merchant pays more than usual for your extra supplies.\n\nGain 100 Gold"  
store.gold += 100 	
}

if myID=19 {
myTitle="Cursed Relic"  
myDesc="You find an ancient relic buried near the Tower. It radiates strange energy. You feel stronger, but cursed.\n\nGain 10 Attack Damage\nLose 10 Max HP"  
store.attack_damage += 10  
store.maxhp -= 10  
if store.maxhp < 1 {store.maxhp=1 store.hp=1}	
}

if myID=20 {
myTitle="The Dark One Stirs"  
myDesc="A dark whisper spreads through the land. The enemies are emboldened, and their strength rises.\n\nEnemy Base Level +1"  
store.enemy_base_level += 1  	
}

if myID=21 {
myTitle="Bounty Hunter"  
myDesc="A lone bounty hunter camps near the Tower and offers coin for hides of your foes.\n\nGain +1 Gold per Kill"  
store.killgold += 1 	
}

if myID=22 {
myTitle="The Cold Night"  
myDesc="A chilling wind sweeps through the land, numbing your hands.\n\nLost 2% Critical Chance\nLost .05 Attack Speed"  
store.critical_chance -= 2  
store.attack_speed -= .05 
if store.critical_chance < 0 {store.critical_chance=0}  
if store.attack_speed < 1 {store.attack_speed=1} 	
}

if myID=23 {
myTitle="The Harvest Festival"  
myDesc="Villagers bring offerings of food and drink, raising spirits.\n\nGain +5 Max HP\nGain +1% Luck"  
store.maxhp += 5  
store.hp += 5  
store.luck += 1  
}

if myID=24 {
myTitle="Meteor Fragments"  
myDesc="A meteor shower scatters fragments near the Tower. The strange ore sharpens your weapons but destabilizes the foundation.\n\nGain 8 Attack Damage\nLose 15 Max HP"  
store.attack_damage += 8  
store.maxhp -= 15  
if store.maxhp < 1 {store.maxhp=1 store.hp=1}  	
}

if myID=25 {
myTitle="Greedy Banker"  
myDesc="Your banker takes a larger cut of your investments.\n\nLost 1% Daily Interest Rate\nLost 25 Gold"  
store.interestrate -= 1  
store.gold -= 25  
if store.interestrate < 0 {store.interestrate=0}  
if store.gold < 0 {store.gold=0}  	
}

if myID=26 {
myTitle="The Dragon’s Tribute"  
myDesc="A mighty dragon swoops overhead. Instead of destroying the Tower, it drops a hoard of shimmering coins.\n\nGain 500 Gold\nLose 20 Max HP"  
store.gold += 500  
store.maxhp -= 20  
if store.maxhp < 1 {store.maxhp=1 store.hp=1}	
}

if myID=27 {
myTitle="Blood Pact"  
myDesc="You awaken with a searing mark on your arm. The Dark One has offered you forbidden strength, but at a terrible price.\n\nGain +10 Attack Damage\nLose 50% of Current HP"  
store.attack_damage += 10  
store.hp = ceil(store.hp/2)	
}

if myID=28 {
myTitle="The Eclipse"  
myDesc="The sun vanishes, replaced by an unholy eclipse. The world trembles. Both you and your enemies grow in power.\n\n+10 Attack Damage\n+5 Enemy Base Level"  
store.attack_damage += 10  
store.enemy_base_level += 5 	
}

if myID=29 {
myTitle="Blood Moon"  
myDesc="A full Moon rises, it is the color of wine and blood. Your senses grow weary of it may bring to the Dark creatures nearby.\n\n+3 Enemy Base Level"   
store.enemy_base_level += 3 	
}

if myID=30 {
myTitle="Spoiled Rations"  
myDesc="A shipment of food has gone bad in storage. The sour smell lingers in the barracks, draining morale.\n\nLose 15 HP"  
store.hp -= 15 
if store.hp < 1 {store.hp=1}  	
}

if myID=31 {
myTitle="Generous Farmer"  
myDesc="A local farmer brings extra supplies as thanks for keeping the roads safe.\n\nGain 25 Gold"  
store.gold += 25 	
}

if myID=32 {
myTitle="Arrow Splinters"  
myDesc="A batch of arrows arrives with shafts too brittle. Some will fail in flight.\n\nLose 1 Attack Damage"  
store.attack_damage -= 1  
if store.attack_damage < 1 {store.attack_damage=1} 	
}

if myID=33 {
myTitle="Reinforced Gate"  
myDesc="A blacksmith strengthens the Tower’s gate hinges and locks.\n\nGain 20 Max HP"  
store.maxhp += 20  
store.hp += 20 	
}

if myID=34 {
myTitle="Merchant’s Trick"  
myDesc="A sly merchant cheats you on a deal. You notice too late.\n\nLose 30 Gold"  
store.gold -= 30  
if store.gold < 0 {store.gold=0} 	
}

if myID=35 {
myTitle="Clear Skies"  
myDesc="The air is crisp, the sky is clear. You can see enemies from a mile away.\n\nGain 10 Attack Range"  
store.attack_range += 10	
}

if myID=36 {
myTitle="Fever"  
myDesc="You fall ill overnight, your strength wavering.\n\nLose .15 Attack Speed"  
store.attack_speed -= .15  
if store.attack_speed < 1 {store.attack_speed=1}  	
}

if myID=37 {
myTitle="Friendly Patrol"  
myDesc="A squad of kingdom soldiers stops by the Tower. They leave behind some spare gear.\n\nGain 3 Defense"  
store.defense += 3 	
}

if myID=38 {
myTitle="Festival of Lights"  
myDesc="The villagers celebrate nearby, their joy infectious. You feel energized.\n\nGain 2% Luck\nGain 20 HP"  
store.luck += 2  
store.hp += 20  
if store.hp > store.maxhp {store.hp=store.maxhp} 	
}

if myID=39 {
myTitle="Night Watch Exhaustion"  
myDesc="You spent too many hours on the walls last night. Your aim is shaky.\n\nLose 1% Critical Chance"  
store.critical_chance -= 1  
if store.critical_chance < 0 {store.critical_chance=0} 	
}

if myID=40 {
myTitle="Rain-Soaked Walls"  
myDesc="A week of heavy rain has softened the mortar along the Tower’s outer wall. Repairs will be needed.\n\nLose 10 Max HP"  
store.maxhp -= 10  
if store.maxhp < 1 {store.maxhp=1 store.hp=1}  
if store.hp > store.maxhp {store.hp=store.maxhp}  	
}

if myID=41 {
myTitle="The Traveling Bard"  
myDesc="A bard stops by the Tower crossing, lifting spirits with stories and songs.\n\nGain 1% Luck\nGain 10 HP"  
store.luck += 1  
store.hp += 10  
if store.hp > store.maxhp {store.hp=store.maxhp} 	
}

if myID=42 {
myTitle="Black Powder Barrel"  
myDesc="A caravan passes through and gifts you a small keg of black powder. You pack it into arrowheads.\n\nGain 25 Bomb Arrows"  
store.have_arrow_bomb+=25
}

if myID=43 {
myTitle="Pest Infestation"  
myDesc="Rats and insects invade the grain stores near the Tower. Morale sags as food runs thin.\n\nLose 10 HP\nLose 1% Luck"  
store.hp -= 10
if store.hp < 1 {store.hp=1}  
store.luck -= 1  
if store.luck < 0 {store.luck=0}  	
}

if myID=44 {
myTitle="Kind Stranger"  
myDesc="A cloaked traveler rests at the Tower and leaves behind a pouch of coins as thanks for shelter.\n\nGain 75 Gold"  
store.gold += 75 	
}

if myID=45 {
myTitle="Drunken Guards"  
myDesc="The night patrol drinks too deeply from their flasks. Their sluggishness leaves the Tower exposed.\n\nLose 3 Defense"  
store.defense -= 3  
if store.defense < 0 {store.defense=0}  	
}

if myID=46 {
myTitle="Perfect Shot"  
myDesc="Your arrow splits another mid-flight while practicing at dawn. Your confidence soars.\n\nGain 2% Critical Chance"  
store.critical_chance += 2  	
}

if myID=47 {
myTitle="Stormy Skies"  
myDesc="Lightning crashes nearby, shaking the earth. The Tower trembles under the storm.\n\nLose 10 Max HP"  
store.maxhp -= 10  
if store.maxhp < 1 {store.maxhp=1 store.hp=1}  
if store.hp > store.maxhp {store.hp=store.maxhp}  	
}

if myID=48 {
myTitle="Grateful Widow"  
myDesc="A woman thanks you for protecting the road where her husband once traveled. She offers a family heirloom.\n\nGain 1 Defense\nGain 25 Gold"  
store.defense += 1  
store.gold += 25  	
}

if myID=49 {
myTitle="Moldy Quiver"  
myDesc="Damp air has spoiled your fletching feathers. Shots won’t fly as true.\n\nLose .05 Attack Speed"  
store.attack_speed -= .05  
if store.attack_speed < 1 {store.attack_speed=1}  	
}

if myID=50 {
myTitle="Overstuffed Banquet"  
myDesc="A nearby village hosts a feast in your honor. The food fills you with strength, though you feel sluggish after.\n\nGain 30 HP\nLose .02 Attack Speed"  
store.hp += 30 
if store.hp > store.maxhp {store.hp=store.maxhp}  
store.attack_speed -= .02  
if store.attack_speed < 1 {store.attack_speed=1}  	
}

if myID=51 {
myTitle="Sharpened Stones"  
myDesc="A passing craftsman hones your arrowheads sharper than before. They strike harder, though the finer tips snap quickly.\n\nGain 3 Attack Damage\nLose .10 Attack Speed"  
store.attack_damage += 3  
store.attack_speed -= .10  
if store.attack_speed < 1 {store.attack_speed=1}  	
}

if myID=52 {
myTitle="The Long Watch"  
myDesc="You spend the night atop the wall, spotting every movement below. Your vigilance pays off, though your body suffers for it.\n\nGain 3 Attack Range\nLose 10 HP"  
store.attack_range += 3 
store.hp -= 10 
if store.hp < 1 {store.hp=1}  	
}

if myID=53 {
myTitle="Leaky Roof"  
myDesc="Rainwater seeps into your sleeping quarters. You wake sore and unrested.\n\nLose 10 HP"  
store.hp -= 10  
if store.hp < 1 {store.hp=1}	
}

if myID=54 {
myTitle="Blunted Blades"  
myDesc="Your whetstone has worn down, leaving your arrowheads a little dull.\n\nLose 2 Attack Damage"  
store.attack_damage -= 2  
if store.attack_damage < 1 {store.attack_damage=1}  	
}

if myID=55 {
myTitle="Chill Winds"  
myDesc="Cold gusts sweep through the land, numbing your hands.\n\nLose .05 Attack Speed\nLose 1% Critical Chance"  
store.attack_speed -= .05  
if store.attack_speed < 1 {store.attack_speed=1} 
store.critical_chance-=1
if store.critical_chance<0 {store.critical_chance=0}
}

if myID=56 {
myTitle="Sour Wine"  
myDesc="Last night’s drink was spoiled. You feel sluggish and slow.\n\nLose .05 Attack Speed"  
store.attack_speed -= .05  
if store.attack_speed < 1 {store.attack_speed=1} 
}

if myID=57 {
myTitle="Crumbling Masonry"  
myDesc="A loose stone falls from the wall, reminding you of the Tower’s age.\n\nLose 5 Max HP"  
store.maxhp -= 5  
if store.maxhp < 1 {store.maxhp=1 store.hp=1}  
if store.hp > store.maxhp {store.hp=store.maxhp} 	
}

if myID=58 {
myTitle="Rotten Arrows"  
myDesc="A batch of arrows spoiled in damp storage. Some won’t fly straight.\n\nLose 1 Attack Damage\nLose .05 Attack Speed"  
store.attack_damage -= 1  
store.attack_speed -= .05  
if store.attack_damage < 1 {store.attack_damage=1}  
if store.attack_speed < 1 {store.attack_speed=1}  	
}

if myID=59 {
myTitle="Blessing of Dawn"
myDesc="As the sun rises, its warmth renews your spirit.\n\nRegain 20 HP\nGain 1% Luck"
store.hp += 20
if store.hp > store.maxhp {store.hp=store.maxhp}
store.luck += 1
}

if myID=60 {
myTitle="Ancient Tome"
myDesc="You discover an old tome hidden beneath the Tower floorboards. Its secrets sharpen your mind.\n\nGain 25 XP"
store.xp += 25
}

if myID=61 {
myTitle="Poisoned Well"
myDesc="The well water near the Tower has been poisoned. You feel weak.\n\nLose 10 HP\nLose .10 Attack Speed"
store.hp -= 10
if store.hp < 1 {store.hp=1}
store.attack_speed -= .10
if store.attack_speed < 1 {store.attack_speed=1}
}

if myID=62 {
myTitle="Treasure Map"
myDesc="A ragged traveler sells you a map. Following it, you uncover a small buried treasure.\n\nGain 150 Gold"
store.gold += 150
}

if myID=63 {
myTitle="The Black Crow"
myDesc="A crow circles overhead, its caw a dire omen. You sense the Dark One’s hand in this.\n\n+2 Enemy Base Level"
store.enemy_base_level += 2
}

if myID=64 {
myTitle="Merchant’s Gift"
myDesc="A grateful merchant, saved from raiders, rewards you handsomely. But word spreads of your wealth…\n\nGain 300 Gold\n+1 Enemy Base Level"
store.gold += 300
store.enemy_base_level += 1
}

if myID=65 {
myTitle="Blessing of the Ancients"
myDesc="An old spirit whispers courage into your heart. The knowledge is overwhelming, but empowering.\n\nGain 50 XP\nLose 2 Defense"
store.xp += 50
store.defense -= 2
if store.defense < 0 {store.defense=0}
}

if myID=66 {
myTitle="Traveler’s Blessing"
myDesc="A weary pilgrim blesses you before moving on. Fortune smiles briefly, but your guard lowers.\n\nGain 2% Luck\nLose 1 Defense"
store.luck += 2
store.defense -= 1
if store.defense < 0 {store.defense=0}
}

if myID=67 {
myTitle="The Hidden Vault"
myDesc="You stumble upon a hidden vault beneath the Tower. Riches beyond belief—though the trap cost you dearly.\n\nGain 500 Gold\nLose 15 HP"
store.gold += 500
store.hp -= 15
if store.hp < 1 {store.hp=1}
}

if myID=68 {
myTitle="Eternal Debt"
myDesc="A mysterious benefactor fills your coffers with wealth beyond belief, but enemies grow stronger sensing your greed.\n\nGain 2000 Gold\n+2 Enemy Base Levels"
store.gold += 2000
store.enemy_base_level += 3
}

if myID=69 {
myTitle="Field Medic"
myDesc="You find a wounded scout barely alive near the treeline. After tending to him, he presses spare supplies into your hands.\n\nGain 2 Potions"
store.have_potion += 2
}

if myID=70 {
myTitle="Abandoned Infirmary"
myDesc="An old battlefield aid tent still stands, untouched by looters. Powerful remedies remain inside.\n\nGain 1 Mega Potion"
store.have_megapotion += 1
}

if myID=71 {
myTitle="Monk of Still Waters"
myDesc="A silent monk teaches you breathing techniques that sharpen the mind. Before leaving, he offers a small pill of crushed herbs.\n\nGain 1 Focus Pill"
store.have_focuspill += 1
}

if myID=72 {
myTitle="The Clover Patch"
myDesc="You stumble upon a rare four-leaf clover growing in scorched soil. Somehow, it survived.\n\nGain 1 Lucky Clover"
store.have_luckyclover += 1
}

if myID=73 {
myTitle="Forbidden Totem"
myDesc="A blood-soaked totem hums with dark energy. You sense it will draw creatures from miles away.\n\nGain 1 Monster Lure"
store.have_monsterlure += 1
}

if myID=74 {
myTitle="Herbalist’s Hut"
myDesc="An old herbalist lives deep in the woods. She offers a slow-healing salve made from rare moss.\n\nGain 1 Healing Salve"
store.have_healingsalve += 1
}

if myID=75 {
myTitle="Blood-Stained Altar"
myDesc="You find a shattered altar slick with dried blood. Something sharp remains embedded in the stone.\n\nGain 1 Vampire Fang"
store.have_vampirefang += 1
}

if myID=76 {
myTitle="Runaway Livestock"
myDesc="A terrified chicken sprints past the Tower, somehow surviving the chaos of the Dark One’s armies. You keep it.\n\nGain 1 Chicken"
store.have_chicken += 1
}

if myID=77 {
myTitle="Smuggler’s Cache"
myDesc="You uncover barrels hidden beneath rotting leaves. The oil inside glows faintly when exposed to torchlight.\n\nGain 1 Lamp Oil"
store.have_lampoil += 1
}

if myID=78 {
myTitle="Shattered Shrine"
myDesc="A ruined shrine holds a polished mirror that reflects more than just your face.\n\nGain 1 Mirror"
store.have_mirror += 1
}