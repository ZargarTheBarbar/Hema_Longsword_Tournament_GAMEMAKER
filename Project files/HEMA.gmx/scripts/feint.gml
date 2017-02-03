///feint()
cancel = false;
attack = false;
anim_start = false;
target.opponent_feint = true;
alarm[0] = 105;

show_feint_word();

if(right || left || down || up)
{
    if(right)
    {
        if(down)
        {
            if (dir == "right" || dir == "left")
            {
                down = false;
                up = true;
            }
            else
            {
                right = false;
                left = true;
            }
        }
        else if(up)
        {
            if (dir == "right" || dir == "left")
            {
                down = true;
                up = false;
            }
            else
            {
                right = false;
                left = true;
            }
        }
        else
        {
            switch (dir)
            {
                case "right":
                    right = true;
                    up = true;
                        break;
                        
                case "left":
                    left = true;
                    down = true;
                        break;
                        
                case "down":
                    right = true;
                    down = true;
                        break;
                        
                case "up":
                    left = true;
                    up = true;
                        break;
            }
        }
    }
    else if(left)
    {
        if(down)
        {
            if (dir == "right" || dir == "left")
            {
                down = false;
                up = true;
            }
            else
            {
                right = true;
                left = false;
            }
        }
        else if(up)
        {
            if (dir == "right" || dir == "left")
            {
                down = true;
                up = false;
            }
            else
            {
                right = true;
                left = false;
            }
        }
        else
        {
            switch (dir)
            {
                case "right":
                    right = true;
                    up = true;
                        break;
                        
                case "left":
                    left = true;
                    down = true;
                        break;
                        
                case "down":
                    right = true;
                    down = true;
                        break;
                        
                case "up":
                    left = true;
                    up = true;
                        break;
            }
        }
    }
    else
    {
        switch (dir)
        {
            case "down":
                right = true;
                down = true;
                    break;
                    
            case "up":
                left = true;
                up = true;
                    break;
        }
    }
}
if(!right || !left || !down || !up)
{
    switch (dir)
    {
        case "right":
            right = true;
            up = true;
                break;
                
        case "left":
            left = true;
            down = true;
                break;
                
        case "down":
            right = true;
            down = true;
                break;
                
        case "up":
            left = true;
            up = true;
                break;
    }
}

state = feint_state;
script_execute(state);
    
    

