import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int inum = 0;
public void setup()
{
    size(300,300);
}
public void draw()
{
	background(0,0,0,200);
	noFill();
	stroke(150);
	int vari = 30;
	int mindis = 140 - vari;
	int rovari = 140;
	for(int i = 0; i < inum; i++)
        quad(150+(int)(Math.random()*rovari),(150-mindis)-(int)(Math.random()*vari),mindis+(int)(Math.random()*vari)+150,150+(int)(Math.random()*rovari),150-(int)(Math.random()*rovari),mindis+(int)(Math.random()*vari)+150,(150-mindis)-(int)(Math.random()*vari),150-(int)(Math.random()*rovari));
}
public void mousePressed()
{
    inum = inum + 5;
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
