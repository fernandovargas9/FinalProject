
Game tangram = new Game();
Levels level= new Levels();

  void setup() {
    
    size(1100, 600); 
    tangram.moveFigures();
    tangram.backFigures();
  }

  void draw() {
    background(255);
    
    stroke(0);
    strokeWeight(3);
    fill(255);
    rect(305, 5, 588, 590, 20); 
    
    PImage Boat,logo,blanco,Cat,Pez, Person; 
    Boat = loadImage("boat.png");
    Cat = loadImage("cat.png");
    Pez = loadImage("fish.png");
    Person = loadImage("person.png");
    logo = loadImage("logo.png");
    blanco = loadImage("reset.png");   
    
    level.Boat();
    level.Cat();
    level.Fish();
    level.Person();
    
    tangram.showMoveFigures();
   
    image(logo, 0, 300,300,300);
    image(blanco, 900, 0,300,600);
    fill(0); stroke(0); rect(950, 10,100,100, 10);
    image(Boat, 955, 15,90,90);
    fill(0); stroke(0); rect(950, 120,100,100, 10);
    image(Cat, 955, 125,90,90);
    fill(0); stroke(0); rect(950, 230,100,100, 10);
    image(Pez, 955, 235,90,90);
    fill(0); stroke(0); rect(950, 340,100,100, 10);
    image(Person, 955, 345,90,90);
    
    options();
  }
 
  
   void options(){
   Button Solve, Check, Reset;
   
   Solve = new Button("Solve",910,480,80,40,233,141);
   Check = new Button("Check",1010,480,80,40,233,141);
   Reset = new Button("Reset",960,530,80,40,233,141);
   
   if(Check.MouseIsOver()){
       level.itsOkay();
         }
   if(Solve.MouseIsOver()){
       tangram.Solve();
         }
   if(Reset.MouseIsOver()){
        level.clear();}
         }
 