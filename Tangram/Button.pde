class Button { 
  
  String label; // button label 
  float x; // top left corner x position 
  float y; // top left corner y position
  float w; // width of button 
  float h; // height of button 
  // constructor 
  Button(String labelB, float xpos, float ypos, float widthB, float heightB, int a, int b){ 
    fill(a);
    stroke(b);
    label = labelB; 
    x = xpos; 
    y = ypos; 
    w = widthB; 
    h = heightB; 
    dib();
  } 

  void dib() { 
    strokeWeight(4);
    rect(x, y, w, h, 10); 
    textAlign(CENTER, CENTER); 
    fill(0); 
    text(label, x + (w / 2), y + (h / 2)); 
  } 

  boolean MouseIsOver() { 
    
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h) && mousePressed) { 
    strokeWeight(3);
    return true; } 
    return false; } 

}