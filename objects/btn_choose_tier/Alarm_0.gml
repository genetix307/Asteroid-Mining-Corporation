// Genetix Studio
audio_play_sound(sfx_click,1,false)
effect_btn()

if store.current_area="Estarian Woods"
{
    if store.tier=1
    {
        if store.tier1_estarianwoods_best>=10
            store.tier=2
    }
    else if store.tier=2
    {
        if store.tier2_estarianwoods_best>=20
            store.tier=3
        else
            store.tier=1
    }
    else if store.tier=3
    {
        store.tier=1
    }
}

if store.current_area="Winter Hills"
{
    if store.tier=1
    {
        if store.tier1_winterhills_best>=10
            store.tier=2
    }
    else if store.tier=2
    {
        if store.tier2_winterhills_best>=20
            store.tier=3
        else
            store.tier=1
    }
    else if store.tier=3
    {
        store.tier=1
    }
}

if store.current_area="Desolate Desert"
{
    if store.tier=1
    {
        if store.tier1_desolatedesert_best>=10
            store.tier=2
    }
    else if store.tier=2
    {
        if store.tier2_desolatedesert_best>=20
            store.tier=3
        else
            store.tier=1
    }
    else if store.tier=3
    {
        store.tier=1
    }
}

if store.current_area="Dark Woods"
{
    if store.tier=1
    {
        if store.tier1_darkwoods_best>=10
            store.tier=2
    }
    else if store.tier=2
    {
        if store.tier2_darkwoods_best>=20
            store.tier=3
        else
            store.tier=1
    }
    else if store.tier=3
    {
        store.tier=1
    }
}