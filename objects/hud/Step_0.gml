if run_end=0 {
run_time-=1

if run_time<=0 {run_end=1}
}

//Combo
if status_combolock<=0 {combo_value -= combo_drain_rate / 60;}

if (combo_value <= 0)
{
    combo_value = 0;

    if (combo_multiplier > 0)
    {
        combo_multiplier -= 1;

        // Put some progress back into the meter
        // so the player doesn't instantly lose everything
        combo_value = combo_max;
    }
}

combo_pulse = max(0, combo_pulse - 0.08);
combo_flash = max(0, combo_flash - 0.05);

//Maintenance
if hud.game_paused<=0
{
if status_hyperspeed>0 {status_hyperspeed-=1}	
if status_combolock>0 {status_combolock-=1}
if status_superfocus>0 {status_superfocus-=1}
if status_multiblast>0 {status_multiblast-=1}
}