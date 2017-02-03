///opponent_circle_left_input()

switch(opponent_dir)
{
    case "right" :
        up = true;
            break;
            
    case "right_down" :
        right = true;
        up = true;
            break;
    
    case "down_right" :
        right = true;
        up = true;
            break;
    
    case "down" :
        right = true;
            break;  
            
    case "left_down" :
        right = true; 
        down = true; 
            break; 
            
    case "down_left" :
        right = true; 
        down = true;
            break;
            
    case "left" :
        down = true;
            break;   
            
    case "left_up" :
        left = true;
        down = true;
            break; 
            
    case "up_left" :
        left = true;
        down = true;
            break;
            
    case "up" :
        left = true;
            break;
            
    case "up_right" :
        left = true;
        up = true;
            break;
            
    case "right_up" :
        left = true;
        up = true;
            break;
        
}
