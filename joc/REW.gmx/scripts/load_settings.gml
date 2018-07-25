///load_settings() - incarca setarile

ini_open("settings.ini");
obj_optionsmanager.fullscreen=ini_read_real("Settings","Fullscreen",0);
obj_optionsmanager.vsync=ini_read_real("Settings","Vsync",0);
obj_controlmanager.controls=ini_read_real("Settings","ControlType",0);
ini_close();
