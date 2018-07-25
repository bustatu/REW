///create_object(int x,int y,int type,int* specifice)
///face obiectul si executa codul specific lui

///Verific daca pot sa il fac (daca poate fi mai mult de 1)
var canmake=true;
switch(argument2){
 ///Verific daca mai pot pune jucatorul
 case 0:{
  with(obj_object){if(image_index==0){canmake=false;}}
  break;
 }
}

if(canmake){
 switch(argument2){
  case 6:{
   with(instance_create(argument1,argument0,obj_object)){
    image_index=argument2;
    text=argument3;
   } 
   break;
  }
  case 9:{
   with(instance_create(argument1,argument0,obj_object)){
    image_index=argument2;
    image_angle=argument3;
   } 
   break;
  }
  default:{
   with(instance_create(argument1,argument0,obj_object)){
    image_index=argument2;
    image_angle=argument3;
    direction=argument4;
   }
   break;
  }
 }
}

