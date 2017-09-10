///Comet generation.
//comets will either generate off-screen on the left, or right, within a given range.
//If comets generate on the left, they use path_1
//if they generate on the right, they use path_2

//Spawn code
//Set creation alarm
create_comet = 1; //actually spawn the comets.
comet_spawn = 0; //We will have different spawn points on both sides for the comets.
spawn_rate = 180;
//randomize(); //We need this for the spawn selector
alarm[0] = spawn_rate; //Every 2 seconds
///Comets will have 3 spawn points on each side, and they will follow their respective paths.

