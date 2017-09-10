//random Y value for test spawning
randomize();
x_spawn_pos = room_width; //Spawn on left side of the screen.
y_spawn_pos = random_range(0, 64); //This returns a decimal by default, so we need to round.

//Create the comet
instance_create_depth(x_spawn_pos, y_spawn_pos, 1, obj_comet_left);

//Call alarm again.
alarm[0] = spawn_rate;