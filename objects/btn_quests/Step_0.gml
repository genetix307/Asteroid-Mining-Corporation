//Set Info
greyed_out=1

if myID=1 {myDesc="Deal 500 Damage" myReward=50 current=store.damage_dealt goal=500}
if myID=2 {myDesc="Deal 2500 Damage" myReward=200 current=store.damage_dealt goal=2500}
if myID=3 {myDesc="Deal 10000 Damage" myReward=500 current=store.damage_dealt goal=10000}
if myID=4 {myDesc="Deal 25000 Damage" myReward=750 current=store.damage_dealt goal=25000}
if myID=5 {myDesc="Deal 100000 Damage" myReward=1000 current=store.damage_dealt goal=100000}
if myID=6 {myDesc="Get 10 Critical Hits" myReward=50 current=store.criticals goal=10}
if myID=7 {myDesc="Get 25 Critical Hits" myReward=200 current=store.criticals goal=25}
if myID=8 {myDesc="Get 50 Critical Hits" myReward=500 current=store.criticals goal=50}
if myID=9 {myDesc="Get 100 Critical Hits" myReward=750 current=store.criticals goal=100}
if myID=10 {myDesc="Get 300 Critical Hits" myReward=1000 current=store.criticals goal=300}
if myID=11 {myDesc="Multishot 10 times" myReward=50 current=store.multishots goal=10}
if myID=12 {myDesc="Multishot 25 times" myReward=200 current=store.multishots goal=25}
if myID=13 {myDesc="Multishot 50 times" myReward=500 current=store.multishots goal=50}
if myID=14 {myDesc="Multishot 100 times" myReward=750 current=store.multishots goal=100}
if myID=15 {myDesc="Multishot 300 times" myReward=100 current=store.multishots goal=300}
if myID=16 {myDesc="Destroy 25 Asteroids" myReward=50 current=store.asteroids_destroyed goal=25}
if myID=17 {myDesc="Destroy 100 Asteroids" myReward=200 current=store.asteroids_destroyed goal=100}
if myID=18 {myDesc="Destroy 250 Asteroids" myReward=500 current=store.asteroids_destroyed goal=250}
if myID=19 {myDesc="Destroy 500 Asteroids" myReward=750 current=store.asteroids_destroyed goal=500}
if myID=20 {myDesc="Destroy 1000 Asteroids" myReward=1000 current=store.asteroids_destroyed goal=1000}
if myID=21 {myDesc="Destroy 5 Gold Asteroids" myReward=50 current=store.gold_destroyed goal=5}
if myID=22 {myDesc="Destroy 20 Gold Asteroids" myReward=200 current=store.gold_destroyed goal=20}
if myID=23 {myDesc="Destroy 50 Gold Asteroids" myReward=500 current=store.gold_destroyed goal=50}
if myID=24 {myDesc="Destroy 100 Gold Asteroids" myReward=750 current=store.gold_destroyed goal=100}
if myID=25 {myDesc="Destroy 300 Gold Asteroids" myReward=1000 current=store.gold_destroyed goal=300}
if myID=26 {myDesc="Destroy 5 Diamond Asteroids" myReward=100 current=store.diamond_destroyed goal=5}
if myID=27 {myDesc="Destroy 20 Diamond Asteroids" myReward=250 current=store.diamond_destroyed goal=20}
if myID=28 {myDesc="Destroy 50 Diamond Asteroids" myReward=800 current=store.diamond_destroyed goal=50}
if myID=29 {myDesc="Destroy 100 Diamond Asteroids" myReward=1000 current=store.diamond_destroyed goal=100}
if myID=30 {myDesc="Destroy 300 Diamond Asteroids" myReward=1500 current=store.diamond_destroyed goal=300}
if myID=31 {myDesc="Deal 25 Damage in a Hit" myReward=100 current=store.damage_dealt_hit goal=25}
if myID=32 {myDesc="Deal 250 Damage in a Hit" myReward=100 current=store.damage_dealt_hit goal=250}
if myID=33 {myDesc="Deal 500 Damage in a Hit" myReward=100 current=store.damage_dealt_hit goal=500}
if myID=34 {myDesc="Deal 750 Damage in a Hit" myReward=100 current=store.damage_dealt_hit goal=750}
if myID=35 {myDesc="Deal 1000 Damage in a Hit" myReward=100 current=store.damage_dealt_hit goal=1000}

if current>=goal {greyed_out=0} 

if store.quests[myID]>0 {collected=1}

if input_a() {
alarm[0]=2	
}





