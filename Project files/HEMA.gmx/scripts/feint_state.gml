///feint_state()
state_str = "feint";

if(!anim_start)
{
    var img_spd = 10/room_speed; 
    var mittelhau = false;
    anim_start = true;
    
    switch(dir)
    {
        case "right": 
            right = true;
            left = false;
            up = true;
            down = false;
        
            with (pnts)
            {
                sprite_index = spr_pants_oberhau_feint_right;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_oberhau_feint_right;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_oberhau_feint_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_oberhau_feint_right;
                        break;
            }
            break;
                    
        case "left":
            right = false;
            left = true;
            down = true;
            up = false;
            
            with (pnts)
            {
                sprite_index = spr_pants_oberhau_feint_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_oberhau_feint_left;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_oberhau_feint_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_oberhau_feint_left;
                        break;
            }
            break;
                
        case "down":
            right = true;
            left = false;
            down = true;
            up = false;
        
            with (pnts)
            {
                sprite_index = spr_pants_oberhau_feint_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_oberhau_feint_down;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_oberhau_feint_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_oberhau_feint_down;
                        break;
            }
            break;
                
        case "up":
            right = false;
            left = true;
            down = false;
            up = true;
            
            
            with (pnts)
            {
                sprite_index = spr_pants_oberhau_feint_up;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_oberhau_feint_up;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_oberhau_feint_up;
                            break;
                    case "blue":
                        sprite_index = spr_blue_oberhau_feint_up;
                            break;
                }
                break;
                
        default:
            dir = "right";
    }
    image_index = 0;
    image_speed = img_spd;
}
    disable_input = true;
