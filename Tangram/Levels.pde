class Levels {

boolean Boat, Cat, Fish, Person;
  void Boat(){
    
      if (mouseX>950&&mouseX<1050&&mouseY>10&&mouseY<110){
        if(mousePressed==true){
         Boat=true;
         Cat=false;
         Fish=false;
         Person=false;
         }
       }
      if(Boat==true){
         tangram.showBackFigures(1);
         if(mousePressed==true){
            tangram.checkAll(1);      
              }
          }
      }
  
  void Cat(){
    if (mouseX>950&&mouseX<1050&&mouseY>120&&mouseY<220){
      if(mousePressed==true){
         Boat=false;
         Cat=true;
         Fish=false;  
         Person=false;
         }
       }
      if(Cat==true){
         tangram.showBackFigures(2);
         if(mousePressed==true){
            tangram.checkAll(2);
              }
          }  
      }
   void Fish(){
    if (mouseX>950&&mouseX<1050&&mouseY>230&&mouseY<330){
      if(mousePressed==true){
         Boat=false;
         Cat=false;
         Fish=true;       
         Person=false;
         }
       }
      if(Fish==true){
         tangram.showBackFigures(3);
         if(mousePressed==true){
            tangram.checkAll(3);
              }
          }  
      }
    void Person(){
    if (mouseX>950&&mouseX<1050&&mouseY>340&&mouseY<440){
      if(mousePressed==true){
         Boat=false;
         Cat=false;
         Fish=false;
         Person=true;
         }
       }
      if(Person==true){
         tangram.showBackFigures(4);
         if(mousePressed==true){
            tangram.checkAll(4);
              }
          }  
      }

  void itsOkay(){
        tangram.Check();
  }

  
 
  void clear(){
    tangram.moveFigures();
    Boat=false;
    Cat=false;
    Fish=false;
    Person=false;
  }
}
   