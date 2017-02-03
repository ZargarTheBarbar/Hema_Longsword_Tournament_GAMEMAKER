///get_input()

right = keyboard_check_pressed(vk_right);
left = keyboard_check_pressed(vk_left);
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);

enter = keyboard_check_pressed(vk_enter);

// Overide the controls with Gamepad 
var gp_id = 0;
var thresh = .5; 

if (gamepad_is_connected(gp_id)) 
{
    right = gamepad_axis_value(gp_id, gp_axislh) > thresh;
    left = gamepad_axis_value(gp_id, gp_axislh) < -thresh;
    up = gamepad_button_check_pressed(gp_id, gp_axislv) < thresh;
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
    
    enter = gamepad_button_check_pressed(gp_id, gp_start);
}

if (keyboard_check_pressed(vk_escape))
{
    game_end();
}

