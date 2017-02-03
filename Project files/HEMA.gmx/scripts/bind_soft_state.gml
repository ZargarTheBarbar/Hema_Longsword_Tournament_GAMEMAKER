///bind_soft_state()
state_str = "bind_soft";

if (!anim_start)
{
    anim_start = true;
    
    switch(dir)
    {
        case "right": 
             with (pnts)
             {
                sprite_index = spr_pants_bind_hard_right;
                
             }
             with (jckt)
             {
                sprite_index = spr_jacket_bind_hard_right;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_bind_hard_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_bind_hard_right;
                        break;
             }

             break;
            
        case "left":
            with (pnts)
            {
                sprite_index = spr_pants_bind_hard_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_bind_hard_left;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_bind_hard_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_bind_hard_left;
                        break;
             }
             
             break;
        
        case "down":
            with (pnts)
            {
                sprite_index = spr_pants_bind_hard_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_bind_hard_down;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_bind_hard_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_bind_hard_down;
                        break;
             }
             
            break;
        
        case "up":
            with (pnts)
            {
                sprite_index = spr_pants_bind_hard_up;

            }
            with (jckt)
            {
                sprite_index = spr_jacket_bind_hard_up;

            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_bind_hard_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_bind_hard_up;
                        break;
             }
             
            break;
        
        default:
            dir = "right";
    }
    image_index = 0;
    image_speed = 6/room_speed;
}

hspd = 0;
vspd = 0;

if(x < target.x + bind_x - 1)
{
    hspd = 1;
}
if(x > target.x + bind_x + 1)
{
    hspd = -1;
}
if(y < target.y + bind_y - 1)
{
    vspd = 1;
}
if(y > target.y + bind_y + 1)
{
    vspd = -1;
}

move(Solid);

if(id == global.player_id)
{
    if (block && !disable_input)
    {
        // win bind
        
        with(Player.bind_sprite)
        {
            instance_destroy();
        }
        
        disable_input = true;
        anim_start = false;
        state = erste_winden_state;
        script_execute(state);
        
        with(target)
        {
            lose_bind = true;
        }
    }
    else if ((cancel && !disable_input) || (counter && !disable_input))
    {
        // lose bind
        disable_input = true;
        
        with(Player.bind_sprite)
        {
            instance_destroy();
        }
        
        with(target)
        {
            anim_start = false;
            state = duplieren_state;
            script_execute(state);
            win_bind = false;
        }
    }
}

if(id == global.opponent_id)
{
    if(win_bind)
    {
        with(Player.bind_sprite)
        {
            instance_destroy();
        }
        
        anim_start = false;
        state = duplieren_state;
        script_execute(state);
        
        with(target)
        {
            disable_input = true;
        }
        
        win_bind = false;
    }
}



