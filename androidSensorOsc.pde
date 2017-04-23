
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

float accelX;
float accelY;
float accelZ;

void setup() {
  size(400, 400);
  frameRate(25);
  
  /* start oscHook. go to IP/port setup. Look at the port value in oscHook*/
  /* change the port numner in the line below to what you just saw on oscHook */
  /* for the example below, the port number is 7400 */
  oscP5 = new OscP5(this, 7400);
}


void draw() {
  background(0);
}


void oscEvent(OscMessage theOscMessage) {
  /* check if theOscMessage has the address pattern we are looking for. */

  if (theOscMessage.checkAddrPattern("/accelerometer/raw/x")==true) {
    accelX = theOscMessage.get(0).floatValue();  
    println("x: "+accelX);
  }
  
  if (theOscMessage.checkAddrPattern("/accelerometer/raw/y")==true) {
    accelY = theOscMessage.get(0).floatValue();  
    println("y: "+accelY);
  }
  
    if (theOscMessage.checkAddrPattern("/accelerometer/raw/z")==true) {
    accelZ = theOscMessage.get(0).floatValue();  
    println("z: "+accelZ);
  }
  
}

