///bind_kron_two_state()
state_str = "bind_kron_two";
var counter_button = false;

if (!anim_start)
{
    anim_start = true;
    
    switch(dir)
    {
        case "right": 
             with (pnts)
             {
                sprite_index = spr_pants_kron_start_right;
                
             }
             with (jckt)
             {
                sprite_index = spr_jacket_kron_start_right;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_kron_start_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_kron_start_right;
                        break;
             }

             break;
            
        case "left":
            with (pnts)
            {
                sprite_index = spr_pants_kron_start_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_kron_start_left;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_kron_start_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_kron_start_left;
                        break;
             }
             
             break;
        
        case "down":
            with (pnts)
            {
                sprite_index = spr_pants_kron_start_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_kron_start_down;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_kron_start_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_kron_start_down;
                        break;
             }
             
            break;
        
        case "up":
            with (pnts)
            {
                sprite_index = spr_pants_kron_start_up;

            }
            with (jckt)
            {
                sprite_index = spr_jacket_kron_start_up;

            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_kron_start_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_kron_start_up;
                        break;
             }
             
            break;
        
        default:
            dir = "right";
    }
    image_index = 0;
    image_speed = 10/room_speed;
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
    var gp_id = 0;
    
    if (gamepad_is_connected(gp_id)) 
    {
        if(gamepad_button_check_pressed(gp_id, gp_face4))
        {
            var counter_button = true;
            counter = false;
        }
    }
    else if(keyboard_check_pressed(ord('X')))
    {
        var counter_button = true;
        counter = false;
    }
    
    if (counter_button && !disable_input)
    {
        // win bind
        
        with(Player.bind_sprite)
        {
            instance_destroy();
        }
        
        disable_input = true;
        anim_start = false;
        state = grapple_state;
        script_execute(state);
        
        with(target)
        {
            lose_bind = true;
        }
    }
    else if ((block && !disable_input) || (cancel && !disable_input))
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
            state = grapple_state;
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
        state = grapple_state;
        script_execute(state);
        
        with(target)
        {
            disable_input = true;
        }
        
        win_bind = false;
    }
}

