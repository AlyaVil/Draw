float playerX = 300,
  playerY = 300,
  playerRotate = 180,

  lineStairs = 0.01,
  lineRt = 0.001;

int lineCount = 20,
  lineLong = 350;

float blockX = 650,
  blockY = 300;

void setup() {
  size(800, 800);
  frameRate(100);
  background(240, 183, 183);
  stroke(0, 0, 0);
  ellipse(playerX, playerY, 50, 50);
  rectMode(CENTER);
}

void draw() {
  playerX = mouseX;
  playerY = mouseY;
  background(240, 183, 183);
  text(frameRate, 50, 50);
  rect(blockX, blockY, 50, 50);
  playerRotate += 0.01;
  float rotateLine = playerRotate - lineRt;
  for (int x = 0; x < lineCount; x += 1) {
    rotateLine += lineStairs;
    for (int i = 0; i < lineLong; i += 2) {
      if (i != 0 || i >= lineLong - 5) {
        if ((playerX + i*cos(rotateLine) >= blockX - 25) && (playerX + i*cos(rotateLine) <= blockX + 25) && (playerY + i*sin(rotateLine) >= blockY - 25) && (playerY + i*sin(rotateLine) <= blockY + 25) || i >= lineLong - 5) {
          ellipse(playerX + i*cos(rotateLine), playerY + i*sin(rotateLine), 1, 1);
          break;
        } 
        else {
          if (i > 1) {
            ellipse(playerX + i*cos(rotateLine), playerY + i*sin(rotateLine), 1, 1);
          }
        }
      }
    }
  }
}
