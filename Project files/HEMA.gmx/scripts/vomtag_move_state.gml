///vomtag_move_state()
state_str = "vomtag_move";

// Check for action
if (attack)
{
    state = vomtag_prep_state;
    script_execute(state);
}
else if (cancel)
{
    disable_input = true;
    right = false;
    left = false;
    down = false;
    up = false;
    state = vomtag_prep_state;
    script_execute(state);    
}
else if (block)
{
    opponent_feint = false; 
    state = change_to_block_state;
    script_execute(state);
}
else if (counter == 1)
{
        //Hangen
        disable_input = true;
        state = hangen_guard_state;
        script_execute(state);
}
else if (counter == 2)
{
        //Alber
        state = change_to_alber_state;
        script_execute(state);
}
else
{
    // Face the opponent
    if (locked_on)
    {
        face_opponent();
    }

    // Move the player

    if (!right && !left)
    {
        hspd = 0;
    }

    if (!up && !down)
    {
        vspd = 0;
    }

    if (right)
    {
        hspd = walkspd; 
    
        if (down)
        {
            vspd = walkspd;
        }
        else if (up)
        {
            vspd = -walkspd;
        }
    }
    else if (left)
    {
        hspd = -walkspd;
    
        if (down)
        {
            vspd = walkspd;
        }
        else if (up)
        {
            vspd = -walkspd;
        }
    }
    else if (down)
    {
        vspd = walkspd;
    }
    else if (up)
    {
        vspd = -walkspd;
    }
    
    move(Solid);
    
    // Set animation
    
    var imagespd_0 = 8/room_speed;
    var imagespd_1 = 6/room_speed;
    
    if(locked_on)
    {
        if (hspd == 0 && vspd == 0)
        {
        
            switch(dir)
            {
                case "right": 
                    with (pnts)
                    {
                        sprite_index = spr_pants_vomtag_right_right;
                    }
                    with (jckt)
                    {
                        sprite_index = spr_jacket_vomtag_right_right;
                    }
                     
                    switch (fencer)
                    {
                        case "red":
                            sprite_index = spr_red_vomtag_right_right;
                                break;
                        case "blue":
                            sprite_index = spr_blue_vomtag_right_right;
                                break;
                    }
                        break;
                    
                case "left":
                    with (pnts)
                    {
                        sprite_index = spr_pants_vomtag_left_left;
                    }
                    with (jckt)
                    {
                        sprite_index = spr_jacket_vomtag_left_left;
                    }
                    switch (fencer)
                    {
                        case "red":
                            sprite_index = spr_red_vomtag_left_left;
                                break;
                        case "blue":
                            sprite_index = spr_blue_vomtag_left_left;
                                break;
                    }
                        break;
                
                case "down":
                    with (pnts)
                    {
                        sprite_index = spr_pants_vomtag_down_down;
                    }
                    with (jckt)
                    {
                        sprite_index = spr_jacket_vomtag_down_down;
                    }
                    switch (fencer)
                    {
                        case "red":
                            sprite_index = spr_red_vomtag_down_down;
                                break;
                        case "blue":
                            sprite_index = spr_blue_vomtag_down_down;
                                break;
                    }
                        break;
                
                case "up":
                    with (pnts)
                    {
                        sprite_index = spr_pants_vomtag_up_up;
                    }
                    with (jckt)
                    {
                        sprite_index = spr_jacket_vomtag_up_up;
                    }
                    switch (fencer)
                    {
                        case "red":
                            sprite_index = spr_red_vomtag_up_up;
                                break;
                        case "blue":
                            sprite_index = spr_blue_vomtag_up_up;
                                break;
                    }
                        break;
                
                default:
                    dir = "right";
            }
            image_speed = 0;
            image_index = 3;
            stand = true;
        }
        else if(hspd > 0)
        {
            switch(dir)
            {
            case "right": 
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_right_right;
                    image_speed = imagespd_0;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_right_right;
                    image_speed = imagespd_0;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_right_right;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_right_right;
                            break;
                }

                image_speed = imagespd_0;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                    
            case "left":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_left_left;
                    image_speed = -imagespd_0;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_left_left;
                    image_speed = -imagespd_0;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_left_left;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_left_left;
                            break;
                }

                image_speed = -imagespd_0;
                    break;
                
            case "down":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_down_right;
                    image_speed = imagespd_1;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_down_right;
                    image_speed = imagespd_1;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_down_right;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_down_right;
                            break;
                }
                     
                image_speed = imagespd_1;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                
            case "up":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_up_right;
                    image_speed = imagespd_1;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_up_right;
                    image_speed = imagespd_1;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_up_right;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_up_right;
                            break;
                }
                     
                image_speed = imagespd_1;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                
            default:
                dir = "right";
            }
        }
        else if(hspd < 0)
        {
            switch(dir)
            {
            case "right": 
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_right_right;
                    image_speed = -imagespd_0;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_right_right;
                    image_speed = -imagespd_0;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_right_right;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_right_right;
                            break;
                }
                
                image_speed = -imagespd_0;
                    break;
                    
            case "left":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_left_left;
                    image_speed = imagespd_0;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_left_left;
                    image_speed = imagespd_0;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_left_left;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_left_left;
                            break;
                }
                     
                image_speed = imagespd_0;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                
            case "down":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_down_left;
                    image_speed = imagespd_1;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_down_left;
                    image_speed = imagespd_1;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_down_left;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_down_left;
                            break;
                }
                     
                image_speed = imagespd_1;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                
            case "up":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_up_left;
                    image_speed = imagespd_1;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_up_left;
                    image_speed = imagespd_1;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_up_left;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_up_left;
                            break;
                }
                     
                image_speed = imagespd_1;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                
            default:
                dir = "left";
            }
        }
        else if(vspd > 0)
        {
            if (stand)
            {
                image_index = 0;
                stand = false;
            }
            
            switch(dir)
            {
            case "right": 
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_right_down;
                    image_speed = imagespd_1;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_right_down;
                    image_speed = imagespd_1;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_right_down;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_right_down;
                            break;
                }
                     
                image_speed = imagespd_1;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                    
            case "left":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_left_down;
                    image_speed = imagespd_1;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_left_down;
                    image_speed = imagespd_1;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_left_down;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_left_down;
                            break;
                }
                     
                image_speed = imagespd_1;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                
            case "down":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_down_down;
                    image_speed = imagespd_0;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_down_down;
                    image_speed = imagespd_0;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_down_down;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_down_down;
                            break;
                }
                     
                image_speed = imagespd_0;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                
            case "up":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_up_up;
                    image_speed = -imagespd_0;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_up_up;
                    image_speed = -imagespd_0;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_up_up;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_up_up;
                            break;
                }
                     
                image_speed = -imagespd_0;
                    break;
                
            default:
                dir = "down";
            }
        }
        else if(vspd < 0)
        {
            if (stand)
            {
                image_index = 0;
                stand = false;
            }
            
            switch(dir)
            {
            case "right": 
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_right_up;
                    image_speed = imagespd_1;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_right_up;
                    image_speed = imagespd_1;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_right_up;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_right_up;
                            break;
                }
                     
                image_speed = imagespd_1;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                    
            case "left":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_left_up;
                    image_speed = imagespd_1;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_left_up;
                    image_speed = imagespd_1;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_left_up;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_left_up;
                            break;
                }
                     
                image_speed = imagespd_1;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                
            case "down":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_down_down;
                    image_speed = -imagespd_0;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_down_down;
                    image_speed = -imagespd_0;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_down_down;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_down_down;
                            break;
                }
                     
                image_speed = -imagespd_0;
                    break;
                
            case "up":
                with (pnts)
                {
                    sprite_index = spr_pants_vomtag_up_up;
                    image_speed = imagespd_0;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_vomtag_up_up;
                    image_speed = imagespd_0;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_vomtag_up_up;
                            break;
                    case "blue":
                        sprite_index = spr_blue_vomtag_up_up;
                            break;
                }
                     
                image_speed = imagespd_0;
                
                if (stand)
                {
                    image_index = 0;
                    stand = false;
                }
                    break;
                
            default:
                dir = "up";
            }
        }
        else
        {
        
        }
    }
}
    
    

