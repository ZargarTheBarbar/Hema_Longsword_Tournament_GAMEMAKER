///change_from_block_state()
state_str = "change_from_block";

if (!anim_start)
{
    anim_start = true;
    
    switch(dir)
    {
        case "right": 
             with (pnts)
             {
                sprite_index = spr_pants_pflug_change_from_right;
                
             }
             with (jckt)
             {
                sprite_index = spr_jacket_pflug_change_from_right;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_pflug_change_from_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_pflug_change_from_right;
                        break;
             }

             break;
            
        case "left":
            with (pnts)
            {
                sprite_index = spr_pants_pflug_change_from_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_pflug_change_from_left;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_pflug_change_from_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_pflug_change_from_left;
                        break;
             }
             
             break;
        
        case "down":
            with (pnts)
            {
                sprite_index = spr_pants_pflug_change_from_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_pflug_change_from_down;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_pflug_change_from_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_pflug_change_from_down;
                        break;
             }
             
            break;
        
        case "up":
            with (pnts)
            {
                sprite_index = spr_pants_pflug_change_from_up;

            }
            with (jckt)
            {
                sprite_index = spr_jacket_pflug_change_from_up;

            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_pflug_change_from_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_pflug_change_from_up;
                        break;
             }
             
            break;
        
        default:
            dir = "right";
    }
    image_index = 0;
    image_speed = 10/room_speed;
}


if (footwork_bonus)
{
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
}
