
WavePoint[] wPoints = new WavePoint[60];

void setup() {
  size(1200, 800, P3D);
  //colorMode(HSB, 360, 100, 100);
  smooth();
  stroke(255);
  for (int i = 0; i < wPoints.length; i++) {    
    wPoints[i] = new WavePoint(i*15, 200, 100, i/0.02);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < wPoints.length; i++) {     
    wPoints[i].move();     
    wPoints[i].display();
  }
}

