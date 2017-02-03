///check_attack_range()

var xdif = x - target.x;
var ydif = y - target.y;

var atk_rng = 64;
// attack range was 56
var mittel = false;
var choose_mittel = false; 

if(opponent_range == "close" || opponent_range == "close_mid")
{
    var mittel = true;
    
    if(opponent_range == "close")
    {   
        var choosenum = random_range(1,100);
        if(mittel_freq <= choosenum)
        {
            var choose_mittel = true;
        }
    }
}

switch(dir)
{
    case "right":
        if(xdif < 0 && xdif > -atk_rng)
        {
            if(ydif <= 6 && ydif >= -6)
            {
                if (!choose_mittel)
                {
                    attack = true;
                    right = true;
                    left = false;
                    up = false;
                    down = false;
                }
                else 
                {
                    if(!alarm[10])
                    {
                        alarm[10] = 60;
                    }
                    switch(last_mittel)
                    {
                        case "none":
                            attack = true;
                            right = true;
                            left = false;
                            up = true;
                            down = false;
                            last_mittel = "b";
                                break;
                        case "b":
                            attack = true;
                            right = true;
                            left = false;
                            up = false;
                            down = true;
                            last_mittel = "a";
                                break;
                        case "a":
                            attack = true;
                            right = true;
                            left = false;
                            up = true;
                            down = false;
                            last_mittel = "b";
                                break;
                    }
                }
            }
            else if(mittel)
            {
                if(ydif >= 6 && ydif <= 12)
                {
                    attack = true;
                    right = true;
                    left = false;
                    up = false;
                    down = true;
                }
                else if(ydif < -6 && ydif > -12)
                {
                    attack = true;
                    right = true;
                    left = false;
                    up = true;
                    down = false;
                }
            }
        }
            break;
    
    case "left":
        if(xdif > 0 && xdif < atk_rng)
        {
            if(ydif <= 6 && ydif >= -6)
            {
                if(!choose_mittel)
                {
                    attack = true;
                    right = false;
                    left = true;
                    up = false;
                    down = false;
                }
                else
                {
                    if(!alarm[10])
                    {
                        alarm[10] = 60;
                    }
                    switch(last_mittel)
                    {
                        case "none":
                            attack = true;
                            right = false;
                            left = true;
                            up = false;
                            down = true;
                            last_mittel = "b";
                                break;
                        case "b":
                            attack = true;
                            right = false;
                            left = true;
                            up = true;
                            down = false;
                            last_mittel = "a";
                                break;
                        case "a":
                            attack = true;
                            right = false;
                            left = true;
                            up = false;
                            down = true;
                            last_mittel = "b";
                                break;
                    }
                }
            }
            else if(mittel)
            {
                if(ydif >= 6 && ydif <= 12)
                {
                    attack = true;
                    right = false;
                    left = true;
                    up = false;
                    down = true;
                }
                else if(ydif < -6 && ydif > -12)
                {
                    attack = true;
                    right = false;
                    left = true;
                    up = true;
                    down = false;
                }
            }
        }
            break;
    
    case "down":
        if(ydif < 0 && xdif > -atk_rng)
        {
            if(xdif <= 6 && xdif >= -6)
            {
                if(!choose_mittel)
                {
                    attack = true;
                    right = false;
                    left = false;
                    up = false;
                    down = true;
                }
                else
                {
                    if(!alarm[10])
                    {
                        alarm[10] = 60;
                    }
                    switch(last_mittel)
                    {
                        case "none":
                            attack = true;
                            right = true;
                            left = false;
                            up = false;
                            down = true;
                            last_mittel = "b";
                                break;
                        case "b":
                            attack = true;
                            right = false;
                            left = true;
                            up = false;
                            down = true;
                            last_mittel = "a";
                                break;
                        case "a":
                            attack = true;
                            right = true;
                            left = false;
                            up = false;
                            down = true;
                            last_mittel = "b";
                                break;
                    }  
                }
            }
            else if(mittel)
            {
                if(xdif >= 6 && xdif <= 12)
                {   
                    attack = true;
                    right = true;
                    left = false;
                    up = false;
                    down = true;
                }
                else if(xdif < -6 && xdif > -12)
                {
                    attack = true;
                    right = false;
                    left = true;
                    up = false;
                    down = true;
                }
            }
        }
            break;
    
    case "up":
        if(ydif > 0 && xdif < atk_rng)
        {
            if(xdif <= 6 && xdif >= -6)
            {
                if(!choose_mittel)
                {
                    attack = true;
                    right = false;
                    left = false;
                    up = true;
                    down = false;
                }
                else
                {
                    if(!alarm[10])
                    {
                        alarm[10] = 60;
                    }
                    switch(last_mittel)
                    {
                        case "none":
                            attack = true;
                            right = false;
                            left = true;
                            up = true;
                            down = false;
                            last_mittel = "b";
                                break;
                        case "b":
                            attack = true;
                            right = true;
                            left = false;
                            up = true;
                            down = false;
                            last_mittel = "a";
                                break;
                        case "a":
                            attack = true;
                            right = false;
                            left = true;
                            up = true;
                            down = false;
                            last_mittel = "b";
                                break;
                    }
                }
            }
            else if(mittel)
            {
                if(xdif >= 6 && xdif <= 12)
                {
                    attack = true;
                    right = true;
                    left = false;
                    up = true;
                    down = false;
                }
                else if(xdif < -6 && xdif > -12)
                {
                    attack = true;
                    right = false;
                    left = true;
                    up = true;
                    down = false;
                }
            }
        }
            break;
            
}

