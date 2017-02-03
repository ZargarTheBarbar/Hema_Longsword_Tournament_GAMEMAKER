///opponent_move_to_input_far()

switch(opponent_dir)
{
    case "right" :
        right = true;
            break;
            
    case "right_down" :
        right = true;
        down = true;
            break;
            
    case "right_up" :
        right = true;
        up = true;
            break;
            
    case "left" :
        left = true;
            break;
            
    case "left_down" :
        left = true; 
        down = true; 
            break;
            
    case "left_up" :
        left = true;
        up = true;
            break;
            
    case "down" :
        down = true;
            break;
            
    case "down_right" :
        down = true;
        right = true;
            break;
            
    case "down_left" :
        down = true;
        left = true;
            break;
            
    case "up" :
        up = true;
            break;
            
    case "up_right" :
        up = true;
        right = true;
        
            break;
            
    case "up_left" :
        up = true;
        left = true;
            break;
      
}
