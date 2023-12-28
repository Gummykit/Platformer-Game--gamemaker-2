/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_kill_monster, 1, false);
instance_create_layer(x, y, "Instances", obj_monster_dead);
score += 10;

