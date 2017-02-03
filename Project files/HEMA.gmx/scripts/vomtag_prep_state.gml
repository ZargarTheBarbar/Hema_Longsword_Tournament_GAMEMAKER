///vomtag_prep_state()
state_str = "vomtag_prep";

if(!anim_start)
{
    var img_spd = 10/room_speed; 
    var dist_x = x - target.x; 
    var dist_y = y - target.y;
    var abs_dist_x = abs(dist_x);
    var abs_dist_y = abs(dist_y);
    var x_spd = 0;
    var y_spd = 0;
    var mittelhau = false;
    anim_start = true;
    
    // check movement to determine ober or mittel

    if (right)
    {
        if (down)
        {
            var mittelhau = true;
            var x_spd = 1;
            var y_spd = 1;
        }
        else if (up)
        {
            var mittelhau = true;
            var x_spd = 1;
            var y_spd = -1;
        }
    }
    if (left)
    {
        if (down)
        {
            var mittelhau = true;
            var x_spd = -1;
            var y_spd = 1;
        }
        else if (up)
        {
            var mittelhau = true;
            var x_spd = -1;
            var y_spd = -1;
        }
    }
    if (!mittelhau)
    {
        // determine x and y speed
    
        if (abs_dist_x >= 16)
        {
            var y_spd = 0;
            
            if (dist_x > 0)
            {
                var x_spd = -1;
            }
            else
            {
                var x_spd = 1;
            }
        }
        if (abs_dist_y >= 16)
        {
            var x_spd = 0;
            
            if (dist_y > 0)
            {
                var y_spd = -1;
            }
            else
            {
                var y_spd = 1;
            }
        }
    }
    
    hspd = x_spd;
    vspd = y_spd;
    
    switch(dir)
    {
        case "right": 
            with (pnts)
            {
                sprite_index = spr_pants_prep_right;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_prep_right;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_prep_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_prep_right;
                        break;
            }
            break;
                    
        case "left":
            with (pnts)
            {
                sprite_index = spr_pants_prep_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_prep_left;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_prep_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_prep_left;
                        break;
            }
            break;
                
        case "down":
            with (pnts)
            {
                sprite_index = spr_pants_prep_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_prep_down;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_prep_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_prep_down;
                        break;
            }
            break;
                
        case "up":
            with (pnts)
            {
                sprite_index = spr_pants_prep_up;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_prep_up;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_prep_up;
                            break;
                    case "blue":
                        sprite_index = spr_blue_prep_up;
                            break;
                }
                break;
                
        default:
            dir = "right";
    }
    image_index = prep_spd;
    image_speed = img_spd;
}

if (footwork_bonus)
{
    move(Solid);
}

if (cancel)
{
    disable_input = true;
}
