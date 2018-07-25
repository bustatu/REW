///save_settings() - Salveaza setarile
ini_open("settings.ini");
ini_write_real("Settings","Fullscreen",obj_optionsmanager.fullscreen);
ini_write_real("Settings","Vsync",obj_optionsmanager.vsync);
ini_write_real("Settings","ControlType",obj_controlmanager.controls);
ini_close();
