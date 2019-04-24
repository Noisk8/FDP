void herradibujo() {
  rayar.beginDraw();
  if (mousePressed) {
    rayar.stroke(255);
    rayar.line(mouseX, mouseY, pmouseX, pmouseY);
  }
  rayar.endDraw();
  image(rayar, 0, 0);
}
