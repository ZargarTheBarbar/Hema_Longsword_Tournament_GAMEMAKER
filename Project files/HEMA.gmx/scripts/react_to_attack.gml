///react_to_attack()

if(!reaction)
{
    reaction = true;
    var alarm_time = 30;
    var react_to = false;
    var choosenum = random_range(1,100);
    
    if(choosenum <= react_freq)
    {
        var react_to = true;
    }
    
    if (react_to)
    { 
        switch (target.state_str)
        {
            case "vomtag_prep":
            var alarm_time = 6;
            react_to_vomtag_prep(); 
                break;
                
            case "oberhau_attack":
            var alarm_time = 30;
            react_to_oberhau_attack();
                break;
                
            case "mittelhau_attack":
            var alarm_time = 30;
            react_to_mittelhau_attack();
                break;
                
            case "thrust_attack":
            var alarm_time = 30;
            react_to_thrust_attack();
                break;
        }
    }
    alarm[11] = alarm_time;
}
