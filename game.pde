void game() {
  background(0);
  myShip.show();
  myShip.act();
  
  int i = 0;
  while (i < myBullets.size()) {
    Bullet b = myBullets.get(i);
    b.show();
    b.act();
    i++;
  }
  
  PImage frame = bg.get(nFrames);
  image(frame, 0, 0, width, height);
  nFrames++;
  if (nFrames==100) nFrames = 0;
}
