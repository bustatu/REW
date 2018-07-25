///execute_menu_command() - executa comanda din meniu

if(argument1){
 switch(argument0){
  case 1:{fullscreen=!fullscreen;break;}
  case 2:{vsync=!vsync;break;}
  case 3:{obj_controlmanager.controls=!obj_controlmanager.controls;break;}
 }
}
else {
 switch(argument0){
  case 1:{room_goto(room_custom);break;}
  case 2:{room_goto(room_endless);break;}
  case 3:{room_goto(options);break;}
  case 4:{action_webpage("file:///"+string_replace(environment_get_variable("APPDATA"),"Roaming","")+"Local\REW\Help\help.html");break;}
  case 5:{game_end();break;}
  default:{show_debug_message("No assigned command");}
 }
}
