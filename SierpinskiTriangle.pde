public void setup(){
  size(500, 500);
  fill((int)(Math.random()*70)+180, (int)(Math.random()*70)+180, (int)(Math.random()*70)+180);
}
public void draw(){
  sierpinski(5, 495, 490);
}
public void sierpinski(int x, int y, int len){
if (len <= 20)
  triangle(x, y, x + len, y, x + len/2, y-len);
else{
sierpinski (x, y, len/2);
sierpinski (x+len/2, y, len/2);
sierpinski (x+len/4, y-len/2, len/2);
}
}
