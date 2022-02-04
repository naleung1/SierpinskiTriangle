public void setup()
{
  size(500, 500);
}
public void draw()
{
  fill((int)(Math.random()*255));
  sierpinski(50, 75, 400);
  fill((int)(Math.random()*255), (int)(Math.random()*255), 255);
}
public void mouseDragged()//optional
{
  sierpinski((int)(Math.random()*500-100),(int)(Math.random()*500),(int)(Math.random()*500));
}
public void sierpinski(int x, int y, int len)
{
  if (len <= 20) {
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2 , y, len/2);
    sierpinski(x + len/4 , y + len/2 , len/2);
  }
}
