///play_no_focus_sound()

if(!audio_is_playing(snd_blip_two))
{
    audio_emitter_gain(audio_em, .25);
    audio_play_sound_on(audio_em, snd_blip_two, false, 10);
}
