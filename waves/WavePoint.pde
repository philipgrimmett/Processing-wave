class WavePoint {   
  float xPos;   
  float yPos;
  float zPos;
  float time;

  float angle = 0.0; 
  float offset = 400; 
  float scalar = 20; 
  float speed;  

  WavePoint(float tempX, float tempY, float tempZ, float tempTime) {     
    xPos = tempX;     
    yPos = tempY;   
    zPos = tempZ;  
    time = tempTime;
  }

  void move() {
    speed = map(mouseX, 0, 1200, 0, 0.1);    
    yPos = offset + sin(angle + time) * scalar;
    angle += speed;
  }

  void display() {
    for (int i = 0; i < 50; i++) {    
      point(xPos, yPos, zPos+(i*15));
    }
  }
}
