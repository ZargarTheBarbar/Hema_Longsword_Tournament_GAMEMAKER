///counter_state()
state_str = "counter";

if (!anim_start)
{
    anim_start = true;
    
    switch(dir)
    {
        case "right": 
             with (pnts)
             {
                sprite_index = spr_pants_alber_counter_right;
                
             }
             with (jckt)
             {
                sprite_index = spr_jacket_alber_counter_right;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_alber_counter_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_alber_counter_right;
                        break;
             }

             break;
            
        case "left":
            with (pnts)
            {
                sprite_index = spr_pants_alber_counter_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_alber_counter_left;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_alber_counter_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_alber_counter_left;
                        break;
             }
             
             break;
        
        case "down":
            with (pnts)
            {
                sprite_index = spr_pants_alber_counter_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_alber_counter_down;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_alber_counter_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_alber_counter_down;
                        break;
             }
             
            break;
        
        case "up":
            with (pnts)
            {
                sprite_index = spr_pants_alber_counter_up;

            }
            with (jckt)
            {
                sprite_index = spr_jacket_alber_counter_up;

            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_alber_counter_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_alber_counter_up;
                        break;
             }
             
            break;
        
        default:
            dir = "right";
    }
    image_index = 0;
    image_speed = 10/room_speed;
    play_swing_sound();
}
