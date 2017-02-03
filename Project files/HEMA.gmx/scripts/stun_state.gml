///stun_state()
state_str = "stun";

if(!anim_start)
{
    disable_input = true;
    right = false;
    left = false;
    down = false;
    up = false; 
    anim_start = true;
    layer_control = false;
    
    var img_spd = 10/room_speed;
    
    play_clash_sound();

    switch (dir)
    {
        case "right":
            left = true;
            
            with (pnts)
            {
                sprite_index = spr_pants_stun_right;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_stun_right;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_stun_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_stun_right;
                        break;
            }
        break;
                
        case "left":
            right = true;
            
            with (pnts)
            {
                sprite_index = spr_pants_stun_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_stun_left;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_stun_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_stun_left;
                        break;
            }
                break;  
                
        case "down":
            up = true;
            
            with (pnts)
            {
                sprite_index = spr_pants_stun_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_stun_down;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_stun_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_stun_down;
                        break;
            }
                break;
                
        case "up":
            down = true;
            
            with (pnts)
            {
                sprite_index = spr_pants_stun_up;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_stun_up;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_stun_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_stun_up;
                        break;
            }
                break;     
                
    }
    
    image_index = 0;
    image_speed = img_spd;
    
}

hspd = 0;
vspd = 0;

if (right)
{
    hspd = walkspd; 
}
else if (left)
{
    hspd = -walkspd;
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
