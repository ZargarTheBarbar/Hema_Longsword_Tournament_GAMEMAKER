///hangen_guard_state()
state_str = "hangen_guard";

if (keyboard_check_pressed(ord('X')))
{
    if(image_index < 11)
    {
        image_index = 10;
    }
}

if (!anim_start)
{
    anim_start = true;
    counter = 0;
    
    switch(dir)
    {
        case "right": 
             with (pnts)
             {
                sprite_index = spr_pants_hangen_guard_right;
             }
             with (jckt)
             {
                sprite_index = spr_jacket_hangen_guard_right;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_guard_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_guard_right;
                        break;
             }
             
                break;
            
        case "left":
            with (pnts)
            {
                sprite_index = spr_pants_hangen_guard_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_hangen_guard_left;
            }
             
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_guard_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_guard_left;
                        break;
             }
             
                break;
        
        case "down":
            with (pnts)
            {
                sprite_index = spr_pants_hangen_guard_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_hangen_guard_down;
            }
             
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_guard_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_guard_down;
                        break;
             }
            
                break;
        
        case "up":
            with (pnts)
            {
                sprite_index = spr_pants_hangen_guard_up;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_hangen_guard_up;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_guard_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_guard_up;
                        break;
             }
             
                break;
        
        default:
            dir = "right";
    }
    
    image_index = 0;
    image_speed = 15/room_speed;
}



