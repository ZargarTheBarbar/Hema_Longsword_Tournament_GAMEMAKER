///play_clash_sound()

if(!audio_is_playing(snd_clash_a || snd_clash_b))
{
    var choosesnd = random_range(1,2);
    if (choosesnd == 1)
    {
        audio_emitter_gain(audio_em, .45);
        audio_play_sound_on(audio_em, snd_clash_a, false, 10);
    }
    else
    {
        audio_emitter_gain(audio_em, .45);
        audio_play_sound_on(audio_em, snd_clash_b, false, 10);
    
    }
}
