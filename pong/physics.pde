void updateBallVelocity() {
  if(ballY>displayHeight-ballRadius){
    ballY=displayHeight-ballRadius;
ballVy *= -1;
}
if(ballY<ballRadius) {
ballY=ballRadius;
ballVy *= -1;
}
if(ballX>displayWidth-(paddleWidth+ballRadius)&&((ballY>=rightPaddle)&&(ballY<=rightPaddle+paddleLength))) {
ballX=displayWidth-(paddleWidth+ballRadius);
ballVx *= -1;
}
if(ballX<ballRadius+paddleWidth&&(ballY>=leftPaddle)&&(ballY<=leftPaddle+paddleLength)) {
ballX=ballRadius+paddleWidth;
ballVx *= -1;
}
  
  // Detect Ball collisions with walls or paddles
  // If collide with paddle, or top/bottom wall, then bounce off
  // If collides with left wall, right player gains one point
  // If collides with right wall, left player gains one point
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}
void updatePaddleVelocity(){}

void updatePaddlePosition() {
  leftPaddle+=LEFTPADDLE_VELOCITY;
  if (leftPaddle> displayHeight-paddleLength)
  leftPaddle= displayHeight-paddleLength;
  if(leftPaddle<0)
  leftPaddle=0;
  
  if(leftPaddle<paddleLength/2)
   leftPaddle=paddleLength/2;
  rightPaddle+=RIGHTPADDLE_VELOCITY;
  if (rightPaddle> displayHeight-paddleLength)
  rightPaddle= displayHeight-paddleLength;
  
  if(rightPaddle<0)
   rightPaddle=0; 
  // Based on the keys pressedd, move the paddles (update Y position)
  // Make sure the paddles don't leave the screen
}
void resolveCollision(){
  if(ballY>displayHeight-ballRadius){
    ballY=displayHeight-ballRadius;
ballVy *= -1;
}
if(ballY<ballRadius) {
ballY=ballRadius;
ballVy *= -1;
}
else if(ballX>displayWidth-(paddleWidth+ballRadius)&&((ballY>=rightPaddle)&&(ballY<=rightPaddle+paddleLength))) {
ballX=displayWidth-(paddleWidth+ballRadius);
ballVx *= -1;
}


if(ballX<ballRadius+paddleWidth&&(ballY>=leftPaddle)&&(ballY<=leftPaddle+paddleLength)) {
ballX=ballRadius+paddleWidth;
ballVx *= -1;
}
}
  // Resolve Collisions with all other walls