void keyPressed() {
  if (key == LEFT_UP)       left_up = true;
  if (key == LEFT_DOWN)     left_down = true;
  if (key == RIGHT_UP)      right_up = true;
  if (key == RIGHT_DOWN)    right_down = true;
  if (key == RESET)         reset = true;
  if (key == PAUSE)         pause = true;
  if (key == START)         start = true;
}

void keyReleased() {
  if (key == LEFT_UP)       left_up = false;
  if (key == LEFT_DOWN)     left_down = false;
  if (key == RIGHT_UP)      right_up = false;
  if (key == RIGHT_DOWN)    right_down = false;
  if (key == RESET)         reset = false;
  if (key == PAUSE)         pause = false;
  if (key == START)         start = false;
}
void detectKeys(){
  println(gamestate);
  if(left_up)
  {
    LEFTPADDLE_VELOCITY=-10;
  }
  if(left_down)
  {
    LEFTPADDLE_VELOCITY=10;
  }
 if(right_up)
  {
    RIGHTPADDLE_VELOCITY=-10;
  }
  if(right_down)
  {
    RIGHTPADDLE_VELOCITY=10;
  }
 if(start)
 {
   gamestate= 0;
 }
  if(reset)
 {
   gamestate = 1;
 }
} 