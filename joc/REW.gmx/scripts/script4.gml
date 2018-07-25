///save_settings() - Salveaza setarile
ini_open("settings.ini");
ini_write_real("Settings","Fullscreen",obj_optionsmanager.fullscreen);
ini_close();
