public void setup()
{
  size(500, 500);
}
public void draw()
{
  fill(244, 100, 50);
  sierpinski(100, 100, 300);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len)
{
  if (len <= 20) {
    triangle(x, y, x + len, y, y + len, x + len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x , y, len/2);
    sierpinski(x , y , len/4);
  }
}
