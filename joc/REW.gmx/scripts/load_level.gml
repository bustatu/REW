///load_level(int index) - incarca nivelul cu index-ul dat
file=file_text_open_read(obj_customcontroler.dir+"/"+ds_map_find_value(maps,"fname"+string(loaded)));
file_text_readln(file);

///Structura unui fisier:
///x y - pentru jucator
///v g g - munitie
plrx=file_text_read_real(file);
plry=file_text_read_real(file);

///Creaza jucatorul si ofera-i toate variabilele
var inst=instance_create(plrx,plry,obj_plr);
inst.viata=file_text_read_real(file);
inst.gloante=file_text_read_real(file);
inst.grenade=file_text_read_real(file);
inst.ghiulele=file_text_read_real(file);

///Numarul de obiecte
var nr=file_text_read_real(file),ok=true;
for(var i=1;i<=nr&&ok;i++){
 ///Tipul obiectului
 var sp=file_text_read_real(file);
 var px=file_text_read_real(file);
 var py=file_text_read_real(file);
 ///Tipul de obiect
 switch(sp){
  ///Zid
  case 1:{instance_create(px,py,obj_wall);break;}
  ///Tort
  case 2:{instance_create(px,py,obj_cake);break;}
  ///Final
  case 3:{instance_create(px,py,obj_end);break;}
  ///Tureta
  case 4:{with(instance_create(px,py,obj_gun)){image_angle=file_text_read_real(other.file);direction=file_text_read_real(other.file);}break;}
  ///Cutie
  case 5:{instance_create(px,py,obj_box);break;}
  ///Text
  case 6:{
   with(instance_create(px,py,obj_text)){text=file_text_read_string(other.file);}
   break;
  }
  ///Viata
  case 7:{instance_create(px,py,obj_hdrop);break;}
  ///Munitie
  case 8:{instance_create(px,py,obj_adrop);break;}
  ///Bouncer
  case 9:{with(instance_create(px,py,obj_strafer)){image_angle=file_text_read_real(other.file);}break;}
  ///Zombie
  case 10:{instance_create(px,py,obj_zombie);break;}
  ///Orice altceva
  default:{
   show_message("This level is invalid.");
   room_restart();ok=false;
   break;
  }
 }
}
if(ok){
 file_text_close(file);
 ///Deja incarcata
 obj_customcontroler.loaded=-1;
}

