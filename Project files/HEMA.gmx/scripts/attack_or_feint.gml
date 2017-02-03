///attack_or_feint()

if (target.state_str == "pflug_move" || target.state_str == "alber_move" || target.state_str == "hangen_guard")
{
    var choosenum = random_range(1,100);
    if(choosenum <= feint_freq)
    {
        attack = false; 
        cancel = true;
    } 
}
else
{
    var choosenum = random_range(1,100);
    if(choosenum <= feint_freq/2)
    {
        if (!no_feint)
        {
            attack = false; 
            cancel = true;
        }
    }
}
