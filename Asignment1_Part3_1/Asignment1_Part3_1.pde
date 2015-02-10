void setup() {
  size(400,800,P2D);
  noStroke();
  noLoop();
}

void draw() {
  background(255,204,0);
  translate(width/2, height/2);
  leaf();
}

void leaf() {
  beginShape();
  vertex(100.0, -70.0);
  bezierVertex(100.0, -70.0, 40.0, -100.0, 0.0, 0.0);
  bezierVertex(0.0, 0.0, 100, 40.0, 100.0, -70.0);
  endShape();
}
