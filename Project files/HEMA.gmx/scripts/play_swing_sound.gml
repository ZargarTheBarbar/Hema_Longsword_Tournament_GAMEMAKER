///play_swing_sound()

// choose between swing_a and swing_b
if(!audio_is_playing(snd_swing_a || snd_swing_b))
{
    var choosesnd = random_range(1,2);
    if (choosesnd == 1)
    {
        audio_emitter_gain(audio_em, .65);
        audio_play_sound_on(audio_em, snd_swing_a, false, 10);
    }
    else
    {
        audio_emitter_gain(audio_em, .65);
        audio_play_sound_on(audio_em, snd_swing_b, false, 10);
    }
}
