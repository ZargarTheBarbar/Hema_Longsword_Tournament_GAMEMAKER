///mittelhau_attack_state()
state_str = "mittelhau_attack";

// play sound
if (image_index == 2)
{
    play_swing_sound();
}
    
// stop movement
if (image_index == 3)
{
    hspd = 0;
    vspd = 0;
    
    if (!check_attack)
    {
        check_attack_boxes();
        check_attack = true;
    }
}

move(Solid);

//chain attack
if (attack)
{
    if (attack_type == "mittelhau_a")
    {
        next_action = "mittelhau_b";
    }
    else
    {
        next_action = "mittelhau_a";
    }
}

if (cancel)
{
    attack = false;
    next_action = "none";  
}
