///menu_go_up(int woptions)
///modifica cursorul cu o pozitie mai sus

var poz=1,meniu=0;

switch(argument0){
 case 0:{meniu=obj_controlmanager;break;}
 case 1:{meniu=obj_optionsmanager;break;}
 case 2:{meniu=obj_customcontroler;break;}
}

///Cauta unul
while(poz<=meniu.selected[0]&&meniu.selected[poz]!=1){poz++;}

///Daca nu este primul
if(poz!=1){
 meniu.selected[poz]=0;
 meniu.selected[poz-1]=1;
 ///Sunet
 audio_play_sound(menu_nav_sound,1,false);
}
