///draw_menu_string(int x,int y,string num,int xscale,int yscale,int indextocheck,bool ifoptions)
///se ocupa de redarea textului in meniu si optiuni

///Press Start 2 Play font
draw_set_font(ps2p);

///Daca este selectat il fac verde (sau daca are -1 nu ii schimb culoarea deloc)
if(argument5==-1){draw_set_color(make_color_rgb(255,255,255));}
if(argument6==0&&argument5!=-1){
 if(obj_controlmanager.selected[argument5]==0){draw_set_color(make_color_rgb(255,255,255));}
 else {draw_set_color(make_color_rgb(0,255,0));}
}
else if(argument5!=-1){
 if(obj_optionsmanager.selected[argument5]==0){draw_set_color(make_color_rgb(255,255,255));}
 else {draw_set_color(make_color_rgb(0,255,0));}
}


///Scrie textul
draw_text_transformed(argument0,argument1,argument2,argument3,argument4,0);
