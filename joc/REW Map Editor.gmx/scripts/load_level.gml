///load_level(int index) - incarca nivelul cu index-ul dat
///Debug
show_debug_message("Loaded Level!");

file=file_text_open_read("Levels/"+files[argument0]);
obj_manager.name=file_text_readln(file);///Citeste numele

///Creez jucatorul daca nu s-a terminat fisierul
if(!file_text_eof(file)){
 create_object(file_text_read_real(file),file_text_read_real(file),0,0,0);
 file_text_readln(file);
 ///Citeste statusurile
 viata=file_text_read_string(file);
 gloante=file_text_read_string(file);
 grenade=file_text_read_string(file);
 ghiulele=file_text_read_string(file);
 file_text_readln(file);

 ///Incarca toate obiectele
 var instante=file_text_read_real(file);
 for(var i=1;i<=instante;i++){
  var type=file_text_read_real(file),px=file_text_read_real(file),py=file_text_read_real(file);
  switch(type){
   case 4:{create_object(py,px,type,file_text_read_real(file),file_text_read_real(file));break;}
   case 6:{create_object(py,px,type,file_text_read_string(file),0);break;}
   case 9:{create_object(py,px,type,file_text_read_real(file),0);break;}
   default:{create_object(py,px,type,0,0);break;}
  }
 }
}
file_text_close(file);

obj_manager.llevel=string_replace(files[argument0],".lvl","");///Pentru salvare
