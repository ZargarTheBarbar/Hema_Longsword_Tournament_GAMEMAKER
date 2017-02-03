///blocked_state()
state_str = "blocked";

if(!anim_start)
{
    disable_input = true;
    right = false;
    left = false;
    down = false;
    up = false; 
    anim_start = true;
    layer_control = true;
    
    var img_spd = 10/room_speed;

    switch (dir)
    {
        case "right":
            left = true;
            depth -= 4;
            
            with (pnts)
            {
                sprite_index = spr_pants_blocked_right;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_blocked_right;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_blocked_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_blocked_right;
                        break;
            } 
        break;
                
        case "left":
            right = true;
            depth += 4;
            
            with (pnts)
            {
                sprite_index = spr_pants_blocked_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_blocked_left;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_blocked_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_blocked_left;
                        break;
            }
                break;  
                
        case "down":
            up = true;
            
            with (pnts)
            {
                sprite_index = spr_pants_blocked_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_blocked_down;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_blocked_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_blocked_down;
                        break;
            }
                break;
                
        case "up":
            down = true;
            
            with (pnts)
            {
                sprite_index = spr_pants_blocked_up;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_blocked_up;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_blocked_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_blocked_up;
                        break;
            }
                break;     
                
    }
    
    image_index = 0;
    image_speed = img_spd;
    
}
