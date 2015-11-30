class TangramShape {
  PVector location;
  float rotation = 0;
  float squareside;
  float unit;
  int shapetype;
  boolean selected = false;
  boolean mouseover = false;
  boolean showstroke = true;

  TangramShape(PVector loc, float sqs, int typ) {
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
    if (selected) {
      stroke(#FCF6F5);
      strokeWeight(2);
    } else {

      strokeWeight(1);
      if (showstroke) {
        stroke(255);
      } else {
        stroke(0);
      }
    }
    fill(0);
    switch(shapetype) {
    case 0: // Big triangle
      fill(#D63649);
      stroke(#890617);
      triangle(-4*unit, -2*unit, 4*unit, -2*unit, 0, 2*unit);
      if (mouseover) {
        strokeWeight(4);
       stroke(#890617);
        triangle(-4*unit, -2*unit, 4*unit, -2*unit, 0, 2*unit);
      }
      break;
     case 1: // Big triangle
     fill(#9ACD32);
     stroke(#46620A);
      triangle(-4*unit, -2*unit, 4*unit, -2*unit, 0, 2*unit);
      if (mouseover) {
        strokeWeight(4);
        stroke(#46620A);
        triangle(-4*unit, -2*unit, 4*unit, -2*unit, 0, 2*unit);
      }
      break;
    case 2: // Middle triangle
    fill(#1E90FF);
    stroke(#074A8B);
      triangle(-unit, -3*unit, 3*unit, unit, -unit, unit);
      if (mouseover) {
        strokeWeight(4);
        stroke(#074A8B);
        triangle(-unit, -3*unit, 3*unit, unit, -unit, unit);
      }
      break;
    case 3: // Small triangle
    fill(#FF4500);
    stroke(#8B2906);
      triangle(-unit, -2*unit, unit, 0, -unit, 2*unit);
      if (mouseover) {
        strokeWeight(4);
        stroke(#8B2906);
        triangle(-unit, -2*unit, unit, 0, -unit, 2*unit);
      }
      break;
    case 4: // Small triangle
    fill(#BA55D3);
    stroke(#5F0576);
      triangle(-unit, -2*unit, unit, 0, -unit, 2*unit);
      if (mouseover) {
        strokeWeight(4);
        stroke(#5F0576);
        triangle(-unit, -2*unit, unit, 0, -unit, 2*unit);
      }
      break;
    case 5:  // Square
    fill(#FFFF00);
    stroke(#D8C10F);
    quad(-2*unit, 0, 0, -2*unit, 2*unit, 0, 0, 2*unit);
      if (mouseover) {
        strokeWeight(4);
        stroke(#D8C10F);
        quad(-2*unit, 0, 0, -2*unit, 2*unit, 0, 0, 2*unit);
      }
      break;
    case 6:  // parallelogram
    fill(#FFB6C1);
    stroke(#9D162D);
    quad(-unit, -3*unit, unit, -unit, unit, 3*unit, -unit, unit);
      if (mouseover) {
       strokeWeight(4);
       stroke(#9D162D);
       quad(-unit, -3*unit, unit, -unit, unit, 3*unit, -unit, unit);
      }
      break;
    }
    popMatrix();
  }

  void setRotation(float rot) {
    rotation = rot;
  }

  void update(float x, float y) {

    if (dist(x, y, location.x, location.y) < 2*unit) {
      mouseover = true;
    } else {
      mouseover = false;
    }
    if (selected) {
      location.x = x;
      location.y = y;
    }
  }
   void click(float x, float y) {
    switch(shapetype) {
    case 0: // Big triangle
    case 1: // Big triangle
    case 2: // Middle triangle
    case 3:  // Small triangle
    case 4:  // Small triangle
    case 5:  // Square
    case 6:  // parallelogram
      if (dist(x, y, location.x, location.y) <unit/2) {
        selected = !selected;
      }
      break;
    }
  }
}