class Game {

  TangramShape[] tangramset;
  ControlFigure[] tangramsetControl;
  float tangramside;
  int w1 = width-300, h1 = height;

  void moveFigures() {

    tangramside = height/2;

    tangramset = new TangramShape[7];
    tangramset[0] = new TangramShape(new PVector(tangramside/2.0, tangramside/4.0), tangramside, 1);
    tangramset[1] = new TangramShape(new PVector(tangramside/4.0*3.0, tangramside/2.0), tangramside, 0);
    tangramset[1].setRotation(HALF_PI);
    tangramset[2] = new TangramShape(new PVector(tangramside/8.0*3.0, tangramside/2.0), tangramside, 4);
    tangramset[3] = new TangramShape(new PVector(tangramside/4.0*3.0, tangramside/8.0*7.0), tangramside, 3);
    tangramset[3].setRotation(-HALF_PI);
    tangramset[4] = new TangramShape(new PVector(tangramside/8.0, tangramside/8.0*7.0), tangramside, 2);
    tangramset[5] = new TangramShape(new PVector(tangramside/2.0, tangramside/4.0*3.0), tangramside, 5);
    tangramset[6] = new TangramShape(new PVector(tangramside/8.0, tangramside/8.0*3.0), tangramside, 6);
 
 }
  
   void backFigures() {
    tangramside = height/2;
    tangramsetControl = new ControlFigure[7];
    tangramsetControl[0] = new ControlFigure(new PVector(tangramside/2.0, tangramside/4.0), tangramside, 1);
    tangramsetControl[1] = new ControlFigure(new PVector(tangramside/4.0*3.0, tangramside/2.0), tangramside, 0);
    tangramsetControl[1].setRotation(HALF_PI);
    tangramsetControl[2] = new ControlFigure(new PVector(tangramside/8.0*3.0, tangramside/2.0), tangramside, 4);
    tangramsetControl[3] = new ControlFigure(new PVector(tangramside/4.0*3.0, tangramside/8.0*7.0), tangramside, 3);
    tangramsetControl[3].setRotation(-HALF_PI);
    tangramsetControl[4] = new ControlFigure(new PVector(tangramside/8.0, tangramside/8.0*7.0), tangramside, 2);
    tangramsetControl[5] = new ControlFigure(new PVector(tangramside/2.0, tangramside/4.0*3.0), tangramside, 5);
    tangramsetControl[6] = new ControlFigure(new PVector(tangramside/8.0, tangramside/8.0*3.0), tangramside, 6);
    for (int i=0; i<tangramsetControl.length; i++) {
        tangramsetControl[i].showstroke = !tangramsetControl[i].showstroke;
      }
   }
   
    void showMoveFigures(){
    for (int i=0; i<tangramset.length; i++) {
        tangramset[i].display();
        tangramset[i].update(mouseX, mouseY); 
     }
    if(mousePressed){
      move();
      
     }    
    if(keyPressed){
      key();
    }
  }   
 
  
  int rotation;
  void showBackFigures(int l) { 
    if(l==1){
      String lines[] = loadStrings("boat.txt");
      for (int i = 0; i <tangramsetControl.length; i++) {
       tangramsetControl[i].display();
       tangramsetControl[i].location.x = Integer.parseInt(lines[(i*3)]);
       tangramsetControl[i].location.y = Integer.parseInt(lines[(i*3)+1]);
       rotation =   Integer.parseInt(lines[(i*3)+2]);
            if(rotation==0){ tangramsetControl[i].rotation=0;}
            if(rotation==1){ tangramsetControl[i].rotation=PI/4;}
            if(rotation==2){ tangramsetControl[i].rotation=PI/2;}
            if(rotation==3){ tangramsetControl[i].rotation=(3*PI)/4;}
            if(rotation==4){ tangramsetControl[i].rotation=PI;}
            if(rotation==5){ tangramsetControl[i].rotation=(5*PI)/4;}
            if(rotation==6){ tangramsetControl[i].rotation=(3*PI)/2;}
            if(rotation==7){ tangramsetControl[i].rotation=(7*PI)/4;} 
       }
     }  
     if(l==2){
        String lines[] = loadStrings("cat.txt");
        for (int i = 0; i <tangramsetControl.length; i++) {
         tangramsetControl[i].display();
         tangramsetControl[i].location.x = Integer.parseInt(lines[(i*3)]);
         tangramsetControl[i].location.y = Integer.parseInt(lines[(i*3)+1]);
         rotation =   Integer.parseInt(lines[(i*3)+2]);
              if(rotation==0){ tangramsetControl[i].rotation=0;}
              if(rotation==1){ tangramsetControl[i].rotation=PI/4;}
              if(rotation==2){ tangramsetControl[i].rotation=PI/2;}
              if(rotation==3){ tangramsetControl[i].rotation=(3*PI)/4;}
              if(rotation==4){ tangramsetControl[i].rotation=PI;}
              if(rotation==5){ tangramsetControl[i].rotation=(5*PI)/4;}
              if(rotation==6){ tangramsetControl[i].rotation=(3*PI)/2;}
              if(rotation==7){ tangramsetControl[i].rotation=(7*PI)/4;} 
      
       }
     }
     if(l==3){
        String lines[] = loadStrings("fish.txt");
        for (int i = 0; i <tangramsetControl.length; i++) {
         tangramsetControl[i].display();
         tangramsetControl[i].location.x = Integer.parseInt(lines[(i*3)]);
         tangramsetControl[i].location.y = Integer.parseInt(lines[(i*3)+1]);
         rotation =   Integer.parseInt(lines[(i*3)+2]);
              if(rotation==0){ tangramsetControl[i].rotation=0;}
              if(rotation==1){ tangramsetControl[i].rotation=PI/4;}
              if(rotation==2){ tangramsetControl[i].rotation=PI/2;}
              if(rotation==3){ tangramsetControl[i].rotation=(3*PI)/4;}
              if(rotation==4){ tangramsetControl[i].rotation=PI;}
              if(rotation==5){ tangramsetControl[i].rotation=(5*PI)/4;}
              if(rotation==6){ tangramsetControl[i].rotation=(3*PI)/2;}
              if(rotation==7){ tangramsetControl[i].rotation=(7*PI)/4;} 
      
       }
     }
     if(l==4){
        String lines[] = loadStrings("person.txt");
        for (int i = 0; i <tangramsetControl.length; i++) {
         tangramsetControl[i].display();
         tangramsetControl[i].location.x = Integer.parseInt(lines[(i*3)]);
         tangramsetControl[i].location.y = Integer.parseInt(lines[(i*3)+1]);
         rotation =   Integer.parseInt(lines[(i*3)+2]);
              if(rotation==0){ tangramsetControl[i].rotation=0;}
              if(rotation==1){ tangramsetControl[i].rotation=PI/4;}
              if(rotation==2){ tangramsetControl[i].rotation=PI/2;}
              if(rotation==3){ tangramsetControl[i].rotation=(3*PI)/4;}
              if(rotation==4){ tangramsetControl[i].rotation=PI;}
              if(rotation==5){ tangramsetControl[i].rotation=(5*PI)/4;}
              if(rotation==6){ tangramsetControl[i].rotation=(3*PI)/2;}
              if(rotation==7){ tangramsetControl[i].rotation=(7*PI)/4;}
         }
      }
   }
   
   void Solve(){
      for (int i=0; i<tangramset.length; i++) {
        tangramset[i].display();
        tangramset[i].location.x = tangramsetControl[i].location.x;
        tangramset[i].location.y = tangramsetControl[i].location.y;
        tangramset[i].rotation = tangramsetControl[i].rotation;
      }
  }
 
  boolean coordinatesOk;   
  void coordinatesCheck(){
     if(
       (
       (//Comparison of large triangles
       ((tangramset[0].location.x<=(tangramsetControl[0].location.x+5))&&
        (tangramset[0].location.x>=(tangramsetControl[0].location.x-5)))&&
       ((tangramset[0].location.y<=(tangramsetControl[0].location.y+5))&&
        (tangramset[0].location.y>=(tangramsetControl[0].location.y-5))))||
        (
       ((tangramset[0].location.x<=(tangramsetControl[1].location.x+5))&&
        (tangramset[0].location.x>=(tangramsetControl[1].location.x-5)))&&
       ((tangramset[0].location.y<=(tangramsetControl[1].location.y+5))&&
        (tangramset[0].location.y>=(tangramsetControl[1].location.y-5))))||
        (
       ((tangramset[1].location.x<=(tangramsetControl[0].location.x+5))&&
        (tangramset[1].location.x>=(tangramsetControl[0].location.x-5)))&&
       ((tangramset[1].location.y<=(tangramsetControl[0].location.y+5))&&
        (tangramset[1].location.y>=(tangramsetControl[0].location.y-5))))||
        (
       ((tangramset[1].location.x<=(tangramsetControl[0].location.x+5))&&
        (tangramset[1].location.x>=(tangramsetControl[0].location.x-5)))&&
       ((tangramset[1].location.y<=(tangramsetControl[0].location.y+5))&&
        (tangramset[1].location.y>=(tangramsetControl[0].location.y-5))))
        )&&
       (
       (//Comparison of small triangles
       ((tangramset[2].location.x<=(tangramsetControl[2].location.x+5))&&
        (tangramset[2].location.x>=(tangramsetControl[2].location.x-5)))&&
       ((tangramset[2].location.y<=(tangramsetControl[2].location.y+5))&&
        (tangramset[2].location.y>=(tangramsetControl[2].location.y-5))))||
        (
       ((tangramset[2].location.x<=(tangramsetControl[3].location.x+5))&&
        (tangramset[2].location.x>=(tangramsetControl[3].location.x-5)))&&
       ((tangramset[2].location.y<=(tangramsetControl[3].location.y+5))&&
        (tangramset[2].location.y>=(tangramsetControl[3].location.y-5))))||
        (
       ((tangramset[3].location.x<=(tangramsetControl[2].location.x+5))&&
        (tangramset[3].location.x>=(tangramsetControl[2].location.x-5)))&&
       ((tangramset[3].location.y<=(tangramsetControl[2].location.y+5))&&
        (tangramset[3].location.y>=(tangramsetControl[2].location.y-5))))||
        (
       ((tangramset[3].location.x<=(tangramsetControl[3].location.x+5))&&
        (tangramset[3].location.x>=(tangramsetControl[3].location.x-5)))&&
       ((tangramset[3].location.y<=(tangramsetControl[3].location.y+5))&&
        (tangramset[3].location.y>=(tangramsetControl[3].location.y-5))))
        )&&
        (//Comparison of medium triangle
       ((tangramset[4].location.x<=(tangramsetControl[4].location.x+5))&&
        (tangramset[4].location.x>=(tangramsetControl[4].location.x-5)))&&
       ((tangramset[4].location.y<=(tangramsetControl[4].location.y+5))&&
        (tangramset[4].location.y>=(tangramsetControl[4].location.y-5)))
        )&&
        (//Comparison of square triangle
       ((tangramset[5].location.x<=(tangramsetControl[5].location.x+5))&&
        (tangramset[5].location.x>=(tangramsetControl[5].location.x-5)))&&
       ((tangramset[5].location.y<=(tangramsetControl[5].location.y+5))&&
        (tangramset[5].location.y>=(tangramsetControl[5].location.y-5)))
        )&&
        (//Comparison of parallelogram
       ((tangramset[6].location.x<=(tangramsetControl[6].location.x+5))&&
        (tangramset[6].location.x>=(tangramsetControl[6].location.x-5)))&&
       ((tangramset[6].location.y<=(tangramsetControl[6].location.y+5))&&
        (tangramset[6].location.y>=(tangramsetControl[6].location.y-5)))
        )        
        ){ coordinatesOk=true;
      }        
        else{
                coordinatesOk=false;
    }
  }
  int l;
  Boolean checkAllOk; 
  void checkAll(int l){
    if(l==1){
      coordinatesCheck();
        if( coordinatesOk==true &&
          tangramset[0].rotation == PI/4 &&
          tangramset[1].rotation == PI/4 &&
         (tangramset[2].rotation == PI/4 || tangramset[2].rotation == (5*PI)/4)&&
         (tangramset[3].rotation == PI/4 || tangramset[3].rotation == (5*PI)/4)&&
         (degrees(tangramset[4].rotation) >= 313) &&
        ((degrees(tangramset[5].rotation) % 45  == 0) || degrees(tangramset[5].rotation) >= 313)&&
        ((tangramset[6].rotation == (3*PI)/4) || degrees(tangramset[6].rotation) >= 313)
          ){
             checkAllOk=true;
      }else{checkAllOk=false;}
    }
    if(l==2){
      coordinatesCheck();
        if( coordinatesOk==true &&
        ((tangramset[0].rotation == (3*PI)/2) || degrees(tangramset[0].rotation) >= 313)&&
        ((tangramset[1].rotation == (3*PI)/2) || degrees(tangramset[1].rotation) >= 313)&&
         (tangramset[2].rotation == 0 || tangramset[2].rotation == PI ) &&
         (tangramset[3].rotation == 0 || tangramset[3].rotation == PI ) &&
         (tangramset[4].rotation == PI/4) &&
        ((degrees(tangramset[5].rotation) % 90  == 0)) &&
         (tangramset[6].rotation == PI/2)
          ){
              checkAllOk=true;
      }else{checkAllOk=false;}
    }
    if(l==3){
      coordinatesCheck();
        if( coordinatesOk==true &&
        ((tangramset[0].rotation == (5*PI)/4) || degrees(tangramset[0].rotation) >= 313)&&
        ((tangramset[1].rotation == (5*PI)/4) || degrees(tangramset[1].rotation) >= 313)&&
          tangramset[2].rotation == PI &&
          tangramset[3].rotation == PI &&
         (tangramset[4].rotation == (5*PI)/4) &&
        ((degrees(tangramset[5].rotation) % 90  == 0)) &&
          tangramset[6].rotation == PI/4
          ){
              checkAllOk=true;
      }else{checkAllOk=false;}
    }
    if(l==4){
      coordinatesCheck();
        if( coordinatesOk==true &&
        ((tangramset[0].rotation == (3*PI)/2) || degrees(tangramset[0].rotation) >= 313)&&
        ((tangramset[1].rotation == (3*PI)/2) || degrees(tangramset[1].rotation) >= 313)&&
        ((tangramset[2].rotation == PI) || (tangramset[2].rotation == PI/2))&&
        ((tangramset[3].rotation == PI) || (tangramset[3].rotation == PI/2))&&
         (tangramset[4].rotation == 0)&&
        ((degrees(tangramset[5].rotation) % 45  == 0) || degrees(tangramset[5].rotation) >= 313) &&
         (tangramset[6].rotation == 0)
          ){
              checkAllOk=true;
      }else{checkAllOk=false;}
    }
  }
     
    void PerfectImage(){
         PImage img;
        img = loadImage("perfecto.png");
        image(img, 300, 0,600,600);
    }
    
    void ErrorImage(){
        PImage error;
        error = loadImage("error.png");
        image(error, 300, 0,600,600);
    }
    
    void Check(){
       if(checkAllOk == false){
        ErrorImage();
      }
      if (checkAllOk == true){
         PerfectImage();
       }
       checkAll(l);
    }
  

  void move(){
  if (mouseButton == LEFT){
  for (int i=0;i<tangramset.length;i++) {
    tangramset[i].update(mouseX,mouseY);
    tangramset[i].click(mouseX, mouseY);
      }
    }
  }
 
 
  void key() {
    frameRate(8);
    if (key == ' ') {
      for (int i=0; i<tangramset.length; i++) {
        if (tangramset[i].selected) {
          tangramset[i].rotation+=(PI/4.0);
          if (tangramset[i].rotation > ((7*PI)/4)){
            tangramset[i].rotation=0;
            return;
          }
        }
      }
    }
  }
}