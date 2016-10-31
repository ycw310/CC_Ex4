//inheritance practice:inherit every function/add data or new function/overide funtion/super
//slight change without touching the touch itself

class OtherPatch extends Patch{

  //constructor (where mostly I got stuck) 
  OtherPatch(float x0temp, float y0temp, float x1temp, float y1temp)//constructor // ref from processing/lirbary array objects
{ 
  super(x0temp,y0temp,x1temp,y1temp);//inheritant from patch constructor
  //super(x0=x0temp); 
  //super(y0=y0temp); 
  //super(x1=x1temp);
  //super(y1=y1temp);
} 

  void display(){
  strokeWeight(0);
  fill(255,0,0);
  ellipse(x0, y0, x1, y1);
  }

}