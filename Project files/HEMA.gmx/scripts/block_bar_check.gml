///block_bar_check()
var block_bonus = argument[0];
var block_time_dur = room_speed*block_time_regen;
var block_time_seg = block_time_dur/5;

switch (block_points)
{
    case 0:
        // stunned
        block_time = 0;
        state = stun_state;
        
        with (target)
        {
             focus_points += 2;
                            
             if(id == global.player_id)
             {
                show_focus_bonus(block_bonus);
             }
        }
            break;
    
    case 1:
        // block bar = 1
        block_time = block_time_seg;
            break;
            
    case 2:
        // block bar = 2
        block_time = block_time_seg*2;
            break;
            
    case 3:
        // block bar = 3
        block_time = block_time_seg*3;
            break;
            
    case 4:
        // block bar = 4
        block_time = block_time_seg*4;
            break;
            
    case 5:
        // block bar = 5
        block_time = block_time_seg*5;
            break;
            
    default: 
        // stunned
        block_points = 0;
        block_time = 0;
        state = stun_state;
}
