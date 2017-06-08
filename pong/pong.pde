void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  drawGameScreen();
}

void drawGameScreen() {
     background(bgColor);
  detectKeys();
 
  updateBallVelocity();
  updateBallPosition();
  updatePaddlePosition();
  updatePaddleVelocity();
  resolveCollision();
  
   drawBall();
  drawPaddles();
}
   
  // Update Ball Velocity and Resolve Collisions
  // Update Ball and Paddle Positions
  // Draw Ball and Paddles
  // Display Scores


void drawBall() { 
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}

  // Display Ball in correct position


void drawPaddles() {
  fill(paddleColor);

  rect(displayWidth-paddleWidth,rightPaddle, paddleWidth, paddleLength);

  rect(0,leftPaddle, paddleWidth, paddleLength);
  // Display Left and Right paddles in correct position
}

void resetGame(){
  ballX=displayWidth/3;
  ballY=displayHeight/5;
  ballVx = 8;
  ballVy = 1;
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
}