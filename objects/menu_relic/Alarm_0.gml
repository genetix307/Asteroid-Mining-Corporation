if myID=1 {type="Turbo Charged" myDesc="Asteroids fill the Combo meter faster" if store.relic_turbocharged=0 {locked=1}}
if myID=2 {type="Tball" myDesc="Auto Aiming at nearest Asteroid" if store.relic_tball=0 {locked=1}}
if myID=3 {type="Multiplicity" myDesc="Expanded Multishot (3 to 5 lasers)" if store.relic_multiplicity=0 {locked=1}}
if myID=4 {type="Early Bird" myDesc="+15% Damage to Asteroids with Full HP" if store.relic_earlybird=0 {locked=1}}
if myID=5 {type="Snowball" myDesc="+1 Damage for each Asteroid destroyed in current Run" if store.relic_snowball=0 {locked=1}}
if myID=6 {type="Bouncy" myDesc="Lasers bounce once off edge of screen" if store.relic_bouncy=0 {locked=1}}
if myID=7 {type="Critical Gold" myDesc="Critical hits multiply Gems earned from Asteroid" if store.relic_criticalgold=0 {locked=1}}
if myID=8 {type="Investor" myDesc="Earn 5% of held Gems at end of each Run" if store.relic_investor=0 {locked=1}}
if myID=9 {type="Lucky Clover" myDesc="Increase Chance of Power Ups spawning" if store.relic_luckyclover=0 {locked=1}}
if myID=10 {type="Combinator" myDesc="Gain +1 Second whenever Combo Multiplier increases" if store.relic_combinator=0 {locked=1}}
if myID=11 {type="Last Second" myDesc="Time Extend Chance is doubled during the final 3 seconds of a Run" if store.relic_lastsecond=0 {locked=1}}
if myID=12 {type="Timed Strike" myDesc="Critical Hits have a 5% chance to add +1 Second" if store.relic_timedstrike=0 {locked=1}}

image_index=myID-1
image_speed=0