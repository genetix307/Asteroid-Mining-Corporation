function combo_add(_amount)
{
    hud.combo_value += _amount;
	
	   // Small pulse every asteroid
    combo_pulse = 1;

    // Check if the player filled the meter
    if (hud.combo_value >= hud.combo_max)
    {
        hud.combo_value -= hud.combo_max;

        hud.combo_multiplier += 1;
		store.combo_multipliers+=1
		
	  // Bigger celebration pulse
        combo_pulse = 2;

        // Flash effect
        combo_flash = 1;

        // Optional maximum multiplier
        // combo_multiplier = min(combo_multiplier, 10);
    }
}