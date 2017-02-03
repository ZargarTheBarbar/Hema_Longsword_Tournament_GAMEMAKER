///thrust_attack_state()
state_str = "thrust_attack";

// play sound
if (image_index == 2)
{
    if(!audio_is_playing(snd_thrust))
    {
        audio_emitter_gain(audio_em, .65);
        audio_play_sound_on(audio_em, snd_thrust, false, 10);
    }
}

// check attack
if (image_index == 2)
{
    image_speed = 10/room_speed;
    
    if (!check_attack)
    {
        check_attack_boxes();
        check_attack = true;
    }
}

// stop movement
if (image_index == 3)
{
    hspd = 0;
    vspd = 0;
}

// start animation
if (!anim_start)
{
    var img_spd = 15/room_speed; 
    var x_spd = 2;
    var y_spd = 2;
    attack_type = "thrust";
    anim_start = true;
    attack = false;
    
    switch(dir)
    {
        case "right": 
            with (pnts)
            {
                sprite_index = spr_pants_thrust_high_right;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_thrust_high_right;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_thrust_high_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_thrust_high_right;
                        break;
            }
                     
            hspd = x_spd;
            vspd = 0;
            
            break;
                    
        case "left":
            with (pnts)
            {
                sprite_index = spr_pants_thrust_high_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_thrust_high_left;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_thrust_high_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_thrust_high_left;
                        break;
            }
            
            hspd = -x_spd;
            vspd = 0;
            
            break;
                
        case "down":
            with (pnts)
            {
                sprite_index = spr_pants_thrust_high_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_thrust_high_down;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_thrust_high_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_thrust_high_down;
                        break;
            }
            
            hspd = 0;
            vspd = y_spd;
            
            break;
                
        case "up":
            with (pnts)
            {
                sprite_index = spr_pants_thrust_high_up;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_thrust_high_up;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_thrust_high_up;
                            break;
                    case "blue":
                        sprite_index = spr_blue_thrust_high_up;
                            break;
                }
                
                hspd = 0;
                vspd = -y_spd;
                
                break;
                
        default:
            dir = "right";
    }
    image_index = 0;
    image_speed = img_spd;
}

move(Solid);
