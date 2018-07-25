///save_level() - salveaza nivelul in fisierul text corespondent

///Sterg fisierul vechi daca exista
if(file_exists("Levels/"+obj_manager.llevel+".lvl")){
 file_delete("Levels/"+obj_manager.llevel+".lvl");
}

file=file_text_open_write("Levels/"+obj_manager.llevel+".lvl");
file_text_write_string(file,obj_manager.name);///Scrie numele
//if(obj_manager.name!="No Name"){
 file_text_writeln(file);///Linie noua
//}

///Ia fiecare obiect si salveaza informatiile lui
///Prima data jucatorul
with(obj_object){
 if(image_index==0){
  ///Coordonatele
  file_text_write_string(other.file,string(x)+" ");
  file_text_write_string(other.file,string(y));
 }
}
///Scriu caracteristicile juatorului
file_text_writeln(file);
file_text_write_string(file,string(viata)+" ");
file_text_write_string(file,string(gloante)+" ");
file_text_write_string(file,string(grenade)+" ");
file_text_write_string(file,string(ghiulele));

///Scriu numarul de instante (care nu sunt jucatorul)
file_text_writeln(file);
file_text_write_string(file,string(instance_number(obj_object)-1));

///Celelalte
with(obj_object){
 if(image_index!=0){
  ///Scriu coordonatele si tipul
  file_text_writeln(other.file);
  file_text_write_string(other.file,string(image_index)+" ");
  file_text_write_string(other.file,string(x)+" ");
  file_text_write_string(other.file,string(y));
  switch(image_index){
   case 4:{file_text_write_string(other.file," "+string(image_angle)+" "+string(direction));break;}
   case 6:{file_text_write_string(other.file," "+text);break;}
   case 9:{file_text_write_string(other.file," "+string(image_angle));break;}
   default:{break;}///Nu au nimic in plus de scris
  } 
 }
}


file_text_close(file);
