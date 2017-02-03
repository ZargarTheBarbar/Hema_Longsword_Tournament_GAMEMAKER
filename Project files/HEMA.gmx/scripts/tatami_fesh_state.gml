///tatami_fresh_state()

if (hit)
{
    var new_x = 0;
    var new_y = y+2;
    
    audio_emitter_gain(audio_em, .25);
    audio_play_sound_on(audio_em, snd_cut, false, 9);
    state = tatami_cut_state;
 
    switch (Player.dir)
    {
        case "right":
            if (Player.attack_type == "oberhau")
            {
                image_index = 2;
                var new_x = x-2;
            }
            else if (Player.attack_type == "mittelhau_a")
            {
                image_index = 2;
                var new_x = x-2;
                
            }
            else if (Player.attack_type == "mittelhau_b")
            {
                image_index = 1;
                var new_x = x+4;
            }
                break;
        case "left":
            if (Player.attack_type == "oberhau")
            {
                image_index = 1;
                var new_x = x+4;
            }
            else if (Player.attack_type == "mittelhau_a")
            {
                image_index = 1;
                var new_x = x+4;
            }
            else if (Player.attack_type == "mittelhau_b")
            {
                image_index = 2;
                var new_x = x-2;
            }
                break;
        case "down":
            if (Player.attack_type == "oberhau")
            {
                image_index = 1;
                var new_x = x+4;
            }
            else if (Player.attack_type == "mittelhau_a")
            {
                image_index = 1;
                var new_x = x+4;
            }
            else if (Player.attack_type == "mittelhau_b")
            {
                image_index = 2;
                var new_x = x-2;
            }
                break;
        case "up":
            if (Player.attack_type == "oberhau")
            {
                image_index = 2;
                var new_x = x-2;
            }
            else if (Player.attack_type == "mittelhau_a")
            {
                image_index = 2;
                var new_x = x-2;
            }
            else if (Player.attack_type == "mittelhau_b")
            {
                image_index = 1;
                var new_x = x+4;
            }
                break; 
    }
    child = instance_create(new_x, new_y, Tatami_cut);
    with(child)
    {
        if (x > other.x)
        {
            image_xscale = -1; 
        }
    }
 
    alarm[0] = 15;
    alarm[1] = 55;
    
    with(ttrl_bttn_two)
    {
        alarm[0] = -1; 
        image_alpha = 0;
    }
    with(ttrl_bttn_three)
    {
        alarm[0] = -1; 
        image_alpha = 0;
    }
    
    switch (type_of_cut)
    {
        case "ober":
            if (Player.attack_type == "oberhau")
            {
                Score_tatami.coins += 1;
                audio_play_sound_on(audio_em, snd_coin, false, true);
                instance_create(x,y-24,Coin);
                  
            }
                break;
          
        case "mittel_one":
            if (Player.attack_type == "mittelhau_b")
            {
                 Score_tatami.coins += 1;
                 audio_play_sound_on(audio_em, snd_coin, false, true);
                 instance_create(x,y-24,Coin);
            }
                break;
        case "mittel_two":
            if (Player.attack_type == "mittelhau_a")
            {
                Score_tatami.coins += 1;
                audio_play_sound_on(audio_em, snd_coin, false, true);
                instance_create(x,y-24,Coin);
            }
                break;
    }
    
    Score_tatami.tatami_count += 1;
 }
