///agg_ai_state()

if(!disable_input)
{
    right = false;
    left = false; 
    down = false;
    up = false;
    attack = false;
    block = false; 
    counter = false;
    cancel = false;
    
    var choosenum = random_range(1,100);
    
    switch (guard)
    {
        case "vomtag":
            block = false;
            counter = false;
            break;
        
        case "pflug":
            block = true;
            counter = false;
            break;
            
        case "alber":
            block = false;
            counter = true;
            break;
    }
    
    ai_measure_distance();
    
    if(opponent_range == "far")
    {
        opponent_move_to_input_far();
    }
    else if(opponent_range == "close_mid")
    {
        if(choosenum <= attack_freq)
        {
            check_attack_range();
        }
        
        if(!attack)
        {
            opponent_move_to_input_close();
        }
        else
        {
            attack_or_feint();
        }
    }
    else if(opponent_range == "mid_far")
    { 
        if(choosenum <= attack_freq/2)
        {
            check_attack_range();
        }
        
        if(!attack)
        {
            opponent_move_to_input_far();
        }
        else
        {
            attack_or_feint();
        }
    }
    else if(opponent_range == "close")
    {
        if(choosenum <= attack_freq)
        {
            check_attack_range();
        }
        
        if(!attack)
        {
            if(choosenum <= move_change_freq)
            {
                var choosenum_two = random_range(1,4);
                {
                    switch(choosenum_two)
                    {
                        case 1:
                            move_style_close = "move_away";
                                break;
                                
                        case 2:
                            move_style_close = "move_away_two";
                                break;
                                
                        case 3:
                            move_style_close = "circle_right";
                                break;
                                
                        case 4:
                            move_style_close = "circle_left"
                                break;
                    }
                }
            }
            
            switch(move_style_close)
            {
                case "move_away":
                    opponent_move_away_input();
                        break;
                        
                case "move_away_two":
                    opponent_move_away_input();
                        break;
                        
                case "circle_right":
                    opponent_circle_right_input();
                        break;
                        
                case "circle_left":
                    opponent_circle_left_input();
                        break;
                
            }
        }
        else
        {
            attack_or_feint();
        }
    }
}
