///oberhau_attack_state()
state_str = "oberhau_attack";

// play sound
if (image_index == 2)
{
    if(cancel)
    {
        feint();
    }
    else
    {
        play_swing_sound(); 
    }
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

if (attack)
{
    next_action = "mittelhau_b";
}


