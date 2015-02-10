void setup() {
  size(400,800,P2D);
  noStroke();
  noLoop();
}

void draw() {
  background(255,204,0);
  vin(15, 0.3, 1);
}

void leaf(int x, int y, float size, float angle) {
  beginShape();
  vertex(x, y);
  bezierVertex(x, y, 40.0, -100.0, 0.0, 0.0);
  bezierVertex(0.0, 0.0, 100, 40.0, 100.0, -70.0);
  endShape();
}

void vin(int numLeaves, float minLeafSize, float maxLeafSize) {
  translate(width/2, 0);
  stroke(255);
  line(0, 0, 0, height);
  noStroke();
  int gap = height / numLeaves;
  float angle = 0;
  for (int i = 0; i < numLeaves; i++) {
    int r = int(random(gap));
    leaf(0, gap*i + r, random(minLeafSize, maxLeafSize), angle);
    angle += PI;
  }
}
