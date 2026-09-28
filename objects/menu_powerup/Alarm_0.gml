if myID=1 {type="Hyper Speed" myDesc="Faster Mining Speed for 5 seconds" if store.powerup_hyperspeed=0 {locked=1}}
if myID=2 {type="Gold Rush" myDesc="Spawns multiple Gold Asteroids" if store.powerup_goldrush=0 {locked=1}}
if myID=3 {type="Super Nova" myDesc="Causes large explosion damaging all nearby Asteroids" if store.powerup_supernova=0 {locked=1}}
if myID=4 {type="Combo Lock" myDesc="Combo meter stops draining for 5 seconds" if store.powerup_combolock=0 {locked=1}}
if myID=5 {type="Super Focus" myDesc="Super Focus: 100% Critical for 5 seconds" if store.powerup_superfocus=0 {locked=1}}
if myID=6 {type="Multiblast" myDesc="100% Multishot for 5 seconds" if store.powerup_multiblast=0 {locked=1}}
if myID=7 {type="Asteroid Storm" myDesc="Spawns a large number of Asteroids" if store.powerup_asteroidstorm=0 {locked=1}}
if myID=8 {type="Combo Surge" myDesc="Instantly increase Combo Meter by 1 level" if store.powerup_combosurge=0 {locked=1}}
if myID=9 {type="Second Wind" myDesc="Adds 5 Seconds to Run" if store.powerup_secondwind=0 {locked=1}}

image_index=myID-1
image_speed=0