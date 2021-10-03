
import g4p_controls.*;
import peasy.*;

public void setup() {
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  colorMode(HSB);
}
int D=50;
color col;
int we = 1;
int x, y;
public void draw() {
  background(230);
  fill(0);
  strokeWeight(we);
  circle(x, y, D);
}

public void customGUI() {
}
