///ai_measure_distance()

var xdif = x - target.x;
var ydif = y - target.y;

var xabs = abs(xdif);
var yabs = abs(ydif);

var offset_diff = 8; 
var close = 32;
var mid = 56;
//var far = 92;
var far = 112;

if (xabs <= yabs)
{  
    if (yabs <= close)
    {
        opponent_range = "close";    
    }
    if( yabs < mid && yabs > close)
    {
        opponent_range = "close_mid";
    }
    if( yabs < far && yabs > mid)
    {
        opponent_range = "mid_far";
    }
    if( yabs >= far)
    {
        opponent_range = "far";
    }
    if (ydif >= 0)
    {
        if (xdif <= offset_diff && xdif >= -offset_diff)
        {
            opponent_dir = "up";
        }
        else if (xdif > offset_diff )
        {
            opponent_dir = "up_left";
        } 
        else if (xdif < -offset_diff )
        {
            opponent_dir = "up_right";
        }
    }
    else
    {
        if (xdif <= offset_diff && xdif >= -offset_diff)
        {
            opponent_dir = "down";
        }
        else if (xdif > offset_diff )
        {
            opponent_dir = "down_left";
        } 
        else if (xdif < -offset_diff )
        {
            opponent_dir = "down_right";
        }
    }
}
else
{
    if (xabs <= close)
    {
        opponent_range = "close";    
    }
    if( xabs < mid && xabs > close)
    {
        opponent_range = "close_mid";
    }
    if( xabs < far && xabs > mid)
    {
        opponent_range = "mid_far";
    }
    if( xabs >= far)
    {
        opponent_range = "far";
    }
    if (xdif >= 0)
    {
        if (ydif <= offset_diff && ydif >= -offset_diff)
        {
            opponent_dir = "left";
        }
        else if (ydif > offset_diff )
        {
            opponent_dir = "left_up";
        } 
        else if (ydif < -offset_diff )
        {
            opponent_dir = "left_down";
        }
    }
    else
    {
        if (ydif <= offset_diff && ydif >= -offset_diff)
        {
            opponent_dir = "right";
        }
        else if (ydif > offset_diff )
        {
            opponent_dir = "right_up";
        } 
        else if (ydif < -offset_diff )
        {
            opponent_dir = "right_down";
        }
    }
}
    


