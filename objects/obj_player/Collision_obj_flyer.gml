/// @description Insert description here
// You can write your code in this editor
if (vspeed > 0 and y < other.y)
{
	instance_destroy(other);
	vspeed = -bounce_value;
}
else
{
	instance_destroy();
}

