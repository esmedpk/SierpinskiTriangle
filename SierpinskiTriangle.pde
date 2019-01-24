public void setup()
{
  size(500,500);
  background(255,255,255);
}
public void draw()
{
  fill(126,133,255);
  noStroke();
  sierpinski(0,500,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len < 5)
  {
    triangle(x, y, x+len/2, y-len, x+len, y); 
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
