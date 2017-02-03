///react_to_thrust_attack()

check_attack_range();

if(attack)
{
    if(state_str == "vomtag_move")
    {
        var choosenum = random_range(1,100);
    
        if (choosenum >= react_agg_one && choosenum <= react_agg_two)
        {
            // attack is already true
        }
        if (choosenum >= react_pas_one && choosenum <= react_pas_two)
        {
            // change to block
            attack = false; 
            block = true;
            guard = "pflug";
        }
        if (choosenum >= react_tac_one && choosenum <= react_tac_two)
        {
            if(focus_points >= 4)
            {
                // hangen counter
                attack = false; 
                block = false;
                counter = 1;
            }
            else
            {
                // change to block
                attack = false; 
                block = true;
                guard = "pflug";
            }
        }
    }
    else if(state_str == "pflug_move")
    {
        var choosenum = random_range(1,100);
    
        if (choosenum >= react_agg_one && choosenum <= react_agg_two)
        {
                // attack is already true
        }
        if (choosenum >= react_pas_one && choosenum <= react_pas_two)
        {
            // block is already true
            attack = false;
        }
        if (choosenum >= react_tac_one && choosenum <= react_tac_two)
        {
            if(opponent_range == "far" || opponent_range == "mid_far")
            {
                // void 
                // still need to work on this
                attack = false;
            }
            else if (absetzen && focus_points >= 6)
            {
                // attack is already true
            }
            else
            {
                // block is already true
                attack = false;
            }
        }
    }
    else if(state_str == "alber_move")
    {
        var choosenum = random_range(1,100);
    
        if (choosenum >= react_agg_one && choosenum <= react_agg_two)
        {
            // work on this later
            attack = false;
        }
        if (choosenum >= react_pas_one && choosenum <= react_pas_two)
        {
            // work on this later
            attack = false;
        }
        if (choosenum >= react_tac_one && choosenum <= react_tac_two)
        {
            // work on this later
            attack = false;
        }
    }
}
