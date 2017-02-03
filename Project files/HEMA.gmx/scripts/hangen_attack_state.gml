///hangen_attack_state()
state_str = "hangen_attack";

if (!anim_start)
{
    anim_start = true;

    play_clash_sound();
    
    switch(dir)
    {
        case "right": 
             with (pnts)
             {
                sprite_index = spr_pants_hangen_attack_right;
             }
             with (jckt)
             {
                sprite_index = spr_jacket_hangen_attack_right;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_attack_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_attack_right;
                        break;
             }
             
                break;
            
        case "left":
            with (pnts)
            {
                sprite_index = spr_pants_hangen_attack_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_hangen_attack_left;
            }
             
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_attack_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_attack_left;
                        break;
             }

                break;
        
        case "down":
            with (pnts)
            {
                sprite_index = spr_pants_hangen_attack_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_hangen_attack_down;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_attack_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_attack_down;
                        break;
             }
             
                break;
        
        case "up":
            with (pnts)
            {
                sprite_index = spr_pants_hangen_attack_up;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_hangen_attack_up;
            }
             
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_attack_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_attack_up;
                        break;
             }

                break;
        
        default:
            dir = "right";
    }
    
    image_index = 0;
    image_speed = 10/room_speed;
}



