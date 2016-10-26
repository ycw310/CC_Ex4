class Patch//fllowing are attribute of objects, class gives you options to make multiple ones
{
  float x0;
  float y0;
  float x1;
  float y1;

  Patch(float x0temp, float y0temp, float x1temp, float y1temp)//constructor // ref from processing/lirbary array objects 10/21/16
  { 
    x0=x0temp; 
    y0=y0temp;
    x1=x1temp;
    y1=y1temp;
  }

  void display() //mathods  of calling the objects
  {
    strokeWeight(0);
    fill(193, 187, 219, 80);
    rect(x0, y0, x1, y1);
  }
  void descend() //mathods  of calling the objects 10/21/16
  { 
    if(y0<785)
    {
      y0++;
      y0=y0+random(-700,800);
    }
  }
}