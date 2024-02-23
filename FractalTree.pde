private double fractionLength = .8; 
private int smallestBranch = 6; 
private double branchAngle = .6;  
private int count = 0;

public void setup() 
{   
  size(640,480);   
  background(#FFFCF2);
  noLoop(); 
} 
public void draw() 
{   

  strokeWeight(2);
 stroke(#A07561);

  line(320,480,320,380);   
  drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 

public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  //your code here 
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle; 
  branchLength = branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  


  line (x,y, endX1, endY1);
  line(x, y, endX2, endY2);
  strokeWeight(2);
   stroke(#A07561);

  if (count >10){
    stroke(#A5C19C);
  }
  if (branchLength> smallestBranch){
    count++;
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
   // count++;
  }
  
} 
