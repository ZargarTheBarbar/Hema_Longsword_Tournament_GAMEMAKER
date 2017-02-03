///react_to_mittelhau_attack()

check_attack_range();

if(attack)
{
    var h_move = false;
    var v_move = false;
    var mittel = false;
    
    if(right || left)
    {
        var h_move = true;
    }
    if(down || up)
    {
        var v_move = true;
    }
    if (v_move && h_move)
    {
        var mittel = true;
    }

    if(state_str == "vomtag_move")
    {
        var choosenum = random_range(1,100);
    
        if (choosenum >= react_agg_one && choosenum <= react_agg_two)
        {
            if(mittel)
            {
                var choosenum_two = random_range(1,100);
                if (choosenum_two >= react_agg_one && choosenum_two <= react_agg_two)
                {
                    // change to block
                    attack = false; 
                    block = true;
                    guard = "pflug";
                }
                else if(choosenum_two >= react_pas_one && choosenum_two <= react_pas_two)
                {
                    // change to block
                    attack = false; 
                    block = true;
                    guard = "pflug";
                }
                else if(choosenum_two >= react_tac_one && choosenum_two <= react_tac_two)
                {
                    if(opponent_range == "far" || opponent_range == "mid_far")
                    {
                        // void 
                        // still need to work on this
                        attack = false;
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
            else
            {
                // attack is already true
            }
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
            if(opponent_range == "far" || opponent_range == "mid_far")
            {
                // void 
                // still need to work on this
                attack = false;
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
            if(mittel)
            {
                // block is already true
                attack = false;
            }
            else
            {
                // attack is already true, this may cause a double
            }
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
