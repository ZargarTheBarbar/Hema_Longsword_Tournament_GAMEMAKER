///block_bar_regen()

var block_time_dur = room_speed*block_time_regen;
var block_time_seg = block_time_dur/5;

// check room stop_time

switch (room)
{
    case rm_defense_drill:
        stop_time = Score_defense.stop_time;
            break;
    case rm_test_cutting:
        stop_time = true;
            break;
    case rm_advanced_techniques:
        stop_time = Score_advanced.stop_time;
            break;
}

// Set the amount of bars based on block time

var seg_one = block_time_seg;
var seg_two = block_time_seg*2;
var seg_three = block_time_seg*3;
var seg_four = block_time_seg*4;
var seg_five = block_time_seg*5;

if (block_time < seg_one)
{
    // block bar empty
    block_points = 0;
}
if (block_time >= seg_one && block_time < seg_two)
{
    // block bar has 1 bar
    block_points = 1;
}
if (block_time >= seg_two && block_time < seg_three)
{
    // block bar has 2 bars
    block_points = 2;
}
if (block_time >= seg_three && block_time < seg_four)
{
    // block bar has 3 bars
    block_points = 3;
}
if (block_time >= seg_four && block_time < seg_five)
{
    // block bar has 4 bars
    block_points = 4;
}
if (block_time >= seg_five)
{
    // block bar has 5 bars
    block_points = 5;
}

if (!stop_time)
{   
    if(block_time < block_time_dur)
    {
        if (state_str == "vomtag_move" || state_str == "pflug_move" || state_str == "alber_move")
        {
             block_time += 1+block_regen_bonus;
        }
    }
}

