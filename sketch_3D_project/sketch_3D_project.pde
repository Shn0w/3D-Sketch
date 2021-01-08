float rotx, roty;

void setup() {
  size(800, 800, P3D);
  rotx = radians(45);
  roty = radians(45);
}

void draw() {
  background(255);
  ball(width/2+300, height/2, 0, #0000FF, 100);
  cube(width/2, height/2, 0, #FF0000, 200);
  cube(0, 0, 0, #0000FF, 200);
}

void ball(float x, float y,float z, color c, float size){
  pushMatrix();
  translate(x, y, z);
  fill(c);
  stroke(255, 0, 0);
  rotateX(rotx);
  rotateY(roty);
  strokeWeight(2);
  stroke(0);
  sphere(size);
  popMatrix();
}

void cube(float x, float y,float z, color c, float size){
  pushMatrix();
  translate(x, y, z);
  rotateX(rotx);
  rotateY(roty);
  fill(c);
  stroke(0);
  strokeWeight(3);
  box(size); //side length
  popMatrix();
}

void mouseDragged() {
  rotx = rotx+(pmouseY - mouseY) *0.01;
  roty = roty+(pmouseX - mouseX) * -0.01;
}
