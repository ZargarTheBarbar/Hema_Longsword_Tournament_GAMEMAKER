///block_state()
state_str = "block";

if(!anim_start)
{
    anim_start = true;
    layer_control = true;
    
    var img_spd = 10/room_speed;
    var timed_block = false;
    
    with(target)
    {
        if (state_str == "stun")
        {
            var timed_block = true;
        }
    }
    if (!timed_block)
    {   
        play_clash_sound();
    }  

    switch (dir)
    {
        case "right":
            hspd = -walkspd;
            vspd = 0;
            
            if(!timed_block)
            {
                with (pnts)
                {
                    sprite_index = spr_pants_pflug_block_right;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_pflug_block_right;
                }
                 
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_pflug_block_right;
                            break;
                    case "blue":
                        sprite_index = spr_blue_pflug_block_right;
                            break;
                }
            }
            else
            {
                with (pnts)
                {
                    sprite_index = spr_pants_timed_block_right;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_timed_block_right;
                }
                 
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_timed_block_right;
                            break;
                    case "blue":
                        sprite_index = spr_blue_timed_block_right;
                            break;
                }
            }
                break;
                
        case "left":
            hspd = walkspd;
            vspd = 0;
            
            if(!timed_block)
            {
                with (pnts)
                {
                    sprite_index = spr_pants_pflug_block_left;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_pflug_block_left;
                }
                 
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_pflug_block_left;
                            break;
                    case "blue":
                        sprite_index = spr_blue_pflug_block_left;
                            break;
                }
            }
            else
            {
                with (pnts)
                {
                    sprite_index = spr_pants_timed_block_left;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_timed_block_left;
                }
                 
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_timed_block_left;
                            break;
                    case "blue":
                        sprite_index = spr_blue_timed_block_left;
                            break;
                }
            }
                break;  
                
        case "down":
            hspd = 0;
            vspd = -walkspd;
            
            if(!timed_block)
            {
                with (pnts)
                {
                    sprite_index = spr_pants_pflug_block_down;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_pflug_block_down;
                }
                 
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_pflug_block_down;
                            break;
                    case "blue":
                        sprite_index = spr_blue_pflug_block_down;
                            break;
                }
            }
            else
            {
                with (pnts)
                {
                    sprite_index = spr_pants_timed_block_down;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_timed_block_down;
                }
                 
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_timed_block_down;
                            break;
                    case "blue":
                        sprite_index = spr_blue_timed_block_down;
                            break;
                }
            }
                break;
                
        case "up":
            hspd = 0;
            vspd = walkspd;
            
            if(!timed_block)
            {
                with (pnts)
                {
                    sprite_index = spr_pants_pflug_block_up;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_pflug_block_up;
                }
                 
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_pflug_block_up;
                            break;
                    case "blue":
                        sprite_index = spr_blue_pflug_block_up;
                            break;
                }
            }
            else
            {
                with (pnts)
                {
                    sprite_index = spr_pants_timed_block_up;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_timed_block_up;
                }
                 
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_timed_block_up;
                            break;
                    case "blue":
                        sprite_index = spr_blue_timed_block_up;
                            break;
                }
            }   
                break;             
    }
    
    image_index = 0;
    image_speed = img_spd;
    
    if(timed_block)
    {
        hspd = 0;
        vspd = 0;
    }
    
}

move(Solid);

if (attack)
{
    var timed_block = false;
    
    with(target)
    {
        if (state_str == "stun")
        {
            var timed_block = true;
        }
    }
    
    if (!timed_block)
    {
        next_action = "thrust";
    }
    else
    {
        anim_start = false;
        state = thrust_attack_state;
        script_execute(state);
    }
}
