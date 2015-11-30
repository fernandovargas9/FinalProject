class ControlFigure {


  PVector location;
  float rotation = 0;
  float squareside;
  float unit;
  int shapetype;
  boolean selected = false;
  boolean mouseover = false;
  boolean showstroke = true;

  ControlFigure(PVector loc, float sqs, int typ) {
    location = loc;
    squareside = sqs;
    unit = squareside/8.0;
    shapetype = typ;
  }
  
  int getType(){
      
    return shapetype;
  }

  void display() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(rotation);
    stroke(#8B8888);
    strokeWeight(3);
    fill(#8B8888);
    switch(shapetype) {
    case 0:
    case 1:// Big triangle
      triangle(-4*unit, -2*unit, 4*unit, -2*unit, 0, 2*unit);
      break;
    case 2: // Middle triangle
      triangle(-unit, -3*unit, 3*unit, unit, -unit, unit);
      break;
    case 3: 
    case 4: // Small triangle
      triangle(-unit, -2*unit, unit, 0, -unit, 2*unit);
      break;
    case 5:  // Square
      quad(-2*unit, 0, 0, -2*unit, 2*unit, 0, 0, 2*unit);
      break;
    case 6:  // parallelogram
      quad(-unit, -3*unit, unit, -unit, unit, 3*unit, -unit, unit);
      break;
    }
    popMatrix();
  }



  void setRotation(float rot) {
    rotation = rot;
  }
  
}