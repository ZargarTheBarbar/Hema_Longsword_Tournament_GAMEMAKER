///check_ai_change()

var anim_speed = image_speed;
var change_ai = false;
var choosenum_one = random_range(1,100);

if (anim_speed == 8/room_speed)
{
    // 1.333333 seconds
    
    if (choosenum_one >= 1 && choosenum_one <= 12)
    {
        var change_ai = true;
    }
}
else if(anim_speed == 6/room_speed)
{
    // 0.6 seconds
    
    if (choosenum_one >= 1 && choosenum_one <= 6)
    {
        var change_ai = true;
    }
}

if(change_ai)
{
    var choosenum_two = random_range(1,100);
    
    if (choosenum_two >= vomtag_one && choosenum_two <= vomtag_two)
    {
        guard = "vomtag";
    }
    if (choosenum_two >= pflug_one && choosenum_two <= pflug_two)
    {
        if (block_points >= 3) 
        {           
            guard = "pflug";
        }
        else
        {
            guard = "vomtag";
        }
    }
    if (choosenum_two >= alber_one && choosenum_two <= alber_two)
    {
        if (focus_points >= 6) 
        {           
            guard = "alber";
        }
        else
        {
            var choosenum_four = random_range(1,2);
            if (choosenum_four == 1)
            {
                guard = "vomtag";
            }
            else
            {
                guard = "pflug";
            }
        }
    }
    
    var choosenum_three = random_range(1,100);
    var tactical = false;
    
    if (choosenum_three >= agg_one && choosenum_two <= agg_two)
    {
        ai_state = agg_ai_state;
    }
    if (choosenum_three >= pas_one && choosenum_two <= pas_two)
    {
        ai_state = pas_ai_state;
    }
    if (choosenum_three >= tac_one && choosenum_two <= tac_two)
    {
        if (focus_points >= 6) 
        {           
            ai_state = tac_ai_state;
            var tactical = true;
        }
        else
        {
            var choosenum_four = random_range(1,2);
            if (choosenum_four == 1)
            {
                ai_state = agg_ai_state;
            }
            else
            {
                ai_state = pas_ai_state;
            }
        }
    }
    
    if (tactical)
    {
        switch (target.state_str)
        {
            case "vomtag_move":
                var opponent_guard = "vomtag";
                break;
                
            case "change_from_block":
                var opponent_guard = "vomtag";
                break;
                
            case "hangen_guard":
                var opponent_guard = "vomtag";
                break;
                
            case "change_to_block":
                var opponent_guard = "pflug";
                break;
                
            case "pflug_move":
                var opponent_guard = "pflug";
                break;  
            
            // need to add alber
        }
        
        if (opponent_guard == "vomtag")
        {
            guard = "alber";
        }
        else if (opponent_guard == "pflug")
        {
            guard = "vomtag";
        }
        else if (opponent_guard == "alber")
        {
            guard = "pflug";
        }
    }
}
