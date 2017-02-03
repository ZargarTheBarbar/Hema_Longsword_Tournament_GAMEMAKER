///opponent_move_away_two_input()

switch(opponent_dir)
{
    case "right" :
        left = true;
            break;
            
    case "right_down" :
        left = true;
        down = true;
            break;
            
    case "right_up" :
        left = true;
        up = true;
            break;
            
    case "left" :
        right = true;
            break;
            
    case "left_down" :
        right = true; 
        down = true; 
            break;
            
    case "left_up" :
        right = true;
        up = true;
            break;
            
    case "down" :
        up = true;
            break;
            
    case "down_right" :
        up = true;
        right = true;
            break;
            
    case "down_left" :
        up = true;
        left = true;
            break;
            
    case "up" :
        down = true;
            break;
            
    case "up_right" :
        down = true;
        right = true;
        
            break;
            
    case "up_left" :
        down = true;
        left = true;
            break;
      
}
