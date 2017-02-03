///feint_two()

if(!anim_start)
{
    state_str = "mittelhau_attack";
    attack_type = "mittelhau_a";
    state = mittelhau_attack_state;

    var img_spd = 15/room_speed; 
    var x_spd = 1;
    var y_spd = 1;
    anim_start = true;
    
    hspd = x_spd;
    vspd = y_spd;
    
    show_feint_word();
    
    switch(dir)
    {
        case "right": 
            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_right_a;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_right_a;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_right_a;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_right_a;
                        break;
            }
            break;
                    
        case "left":
            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_left_a;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_left_a;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_left_a;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_left_a;
                        break;
            }
            break;
                
        case "down":
            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_down_a;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_down_a;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_down_a;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_down_a;
                        break;
            }
            break;
                
        case "up":
            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_up_a;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_mittelhau_up_a;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_mittelhau_up_a;
                            break;
                    case "blue":
                        sprite_index = spr_blue_mittelhau_up_a;
                            break;
                }
                break;
                
        default:
            dir = "right";
    }
    image_index = 0;
    image_speed = img_spd;
}
