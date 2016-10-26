//adj:vulneray, meaning drug or plants using in healing of wouds.
//emergy with dots, analogy to drug/pills, gravity down the could

float endY=0;
float endX=0;
float r=20;

Patch[]patches =new Patch[10];//declare an array(box) of x patches save the memory for the array// Attempt to call Patch class, and store everything in an array where patch numbers are changeable.

void setup()
{
  size(800, 800);
  for (int i=0; i<patches.length; i++)
  {
    patches[i]=new Patch(100*i, 0, 200, 200);//calling the constructor and give it a value 10/21/16
  }
  background(255);
}
void keyPressed() //wound or hurt
{
  noStroke();            
  fill(219, 127, 21, random((100)));
  rect(-mouseX, -mouseY, 100*(random(1.5)), 100*(random(1.5)));
  println(2);
}

void draw()//
{

     {
  stroke(0);
  fill(218, 192, 17);//yellow
  rectMode(CENTER);
  rect(width/2,height/2,r,r);
  r++;
  }

  for (int i=0; i<patches.length; i++)//patches
  {
    patches[i].display();
    patches[i].descend();
  }
  //strokeWeight(2);
  //void mousePressed() 
  //{
  //}
  //for loop lines coming out form the left screen 
  for (int x=-1; x<endX; x+=20)
  {
    frameRate(200);//button layer bigger grids begins from top right
    line(x, 0, x, height);
    for (int y=0; y<endY; y+=20)
      line(0, y, width, y);
  }

  {
    translate(60, 60);//2nd layer bigger grids beigns from top right
    for (int x=10; x<endX; x+=50)
      line(x, 0, x, height);
    for (int y=11; y<endY; y+=50)
      line(0, y, width, y);
  }

  {
    frameRate(80);
    translate(100, 100);//3rd layer begings from top right
    for (int x=10; x<endX; x+=10)
      line(x, 0, x, height);
    for (int y=10; y<endY; y+=20)
      line(0, y, width, y);
    translate(100, 100);//4rd layer begings from top right
    for (int y=5; y<endY; y+=5)
      line(0, y, width, y);
    translate(100, 100);//5rd layer begings from top right
    for (int y=5; y<endY; y+=2)
      line(0, y, width, y);
    translate(100, 100);////5rd layer begings from top right
    for (int y=20; y<endY; y+=1)
      line(0, y, width, y);
    //patehed
    //rect(20, 20, 50, 50);
    //fill(193, 187, 219);
  }
  endY=endY+1;
  endX=endX+1;
}


////color changing on the grids, like healing with plantsx
////patches


 
 //void keyPressed()
 //{ 
 //click=true;//grids go away
 //}
 //*/