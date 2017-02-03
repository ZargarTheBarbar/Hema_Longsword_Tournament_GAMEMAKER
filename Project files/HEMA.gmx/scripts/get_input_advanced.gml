///get_input_advanced()

if(!disable_input)
{
    right = keyboard_check(vk_right);
    left = keyboard_check(vk_left);
    up = keyboard_check(vk_up);
    down = keyboard_check(vk_down);
    
    if(Score_advanced.allow_block)
    {
        block = keyboard_check(ord('C'));
    }
    if(Score_advanced.allow_attack)
    {
        attack = keyboard_check_pressed(ord('V'));
    }
    if(Score_advanced.allow_attack_block)
    {
        if(Player.state_str == "pflug_move")
        {
             attack = keyboard_check_pressed(ord('V'));
        }
    }
    if(Score_advanced.allow_counter)
    {
        if(keyboard_check_pressed(ord('X')))
        {
            if(alarm[11] == -1)
            {
                alarm[11] = 10;
            }
        }
        else if(keyboard_check_released(ord('X')))
        {
            if (!counter == 2)
            {
                counter = 1;
            }
            else
            {
                counter = 0;
            }
        }
    }
    
    if(Score_advanced.allow_feint)
    {
        cancel = keyboard_check_pressed(ord('Z'));
    }
    
    // Overide the controls with Gamepad 
    var gp_id = 0;
    var thresh = .5; 
    
    if (gamepad_is_connected(gp_id)) 
    {
        right = gamepad_axis_value(gp_id, gp_axislh) > thresh;
        left = gamepad_axis_value(gp_id, gp_axislh) < -thresh;
        up = gamepad_button_check_pressed(gp_id, gp_axislv) < thresh;
        down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
        
        if(Score_advanced.allow_attack)
        {
            attack = gamepad_button_check_pressed(gp_id, gp_face1);
        }
        if(Score_advanced.allow_block)
        {
            block = gamepad_button_check_pressed(gp_id, gp_face3);
        }
        if(Score_advanced.allow_counter)
        {
            if(gamepad_button_check_pressed(gp_id, gp_face4))
            {
                if(alarm[11] == -1)
                {
                    alarm[11] = 10;
                }
            }
            else if(gamepad_button_check_pressed(gp_id, gp_face4))
            {
                if (!counter == 2)
                {
                    counter = 1;
                }
                else
                {
                    counter = 0;
                }
            }
        }
        if(Score_advanced.allow_feint)
        {
            cancel = gamepad_button_check_pressed(gp_id, gp_face2); 
        }
    }
}
if (keyboard_check_pressed(vk_escape))
{
    game_end();
}


