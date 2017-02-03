///opponent_circle_right_input()

switch(opponent_dir)
{
    case "right" :
        down = true;
            break;
            
    case "right_down" :
        left = true;
        down = true;
            break;
    
    case "down_right" :
        left = true;
        down = true;
            break;
    
    case "down" :
        left = true;
            break;  
            
    case "left_down" :
        left = true; 
        up = true; 
            break; 
            
    case "down_left" :
        left = true; 
        up = true;
            break;
            
    case "left" :
        up = true;
            break;   
            
    case "left_up" :
        right = true;
        up = true;
            break; 
            
    case "up_left" :
        right = true;
        up = true;
            break;
            
    case "up" :
        right = true;
            break;
            
    case "up_right" :
        right = true;
        down = true;
            break;
            
    case "right_up" :
        right = true;
        down = true;
            break;
        
}
