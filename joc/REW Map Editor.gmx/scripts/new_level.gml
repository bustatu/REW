///new_level() - creeaza un nivel nou
///Debug
show_debug_message("New Level!");

///Deschide un fisier random
randomize();
obj_manager.llevel=string(floor(random(500)));
obj_manager.name="No Name";

