float r, b, g; // this variable will be used to determine the second colour of the line.
float angle = random(1, 10); // a random set of angles provide. Running the sketch will provide a different outcome every time. 
float motion;
float m; // m and motion used to make the sketch run over and over again.
float x, x2; // location of the 2 provided lines.
float rotation;
PImage img; 
void setup()
{
  size(800, 800, P3D);
  x2 = random(100, 200);
  x =random(0, 50);  
  r = random(255);
  b = random(255);
  g =random(255);
  rotation = (50);
  textAlign(CENTER, CENTER);
}

void draw()
{
  background(0);
  //tint(100);
  //img = loadImage("moon.png");
  //image(img, 250, 130, 300, 500);
  String name = "BOOTCAMP";
  //text("Key 'a' to stop", width/2, height/2);
  //text("Key 's' to continue", width/2, height/2+15);
  fill(255);
  textSize(20);
  text(name, width/2, 470);
  translate(width/2, height/2);
  motion =  sin(radians(frameCount));  //sin measured in -1 to 1 so, per every second the value will be using tiny decimal numbers
  m = motion * map(0, 0, height, 2500, 0); // as sin is a very miniscule providing a larger value to times it make the speed of the loop much faster.
  lines(255, 255, 255);
  lines(r, g, b);
  
  
  rotateY(radians(rotation));
  noFill();
  sphere(60);
  rotation = rotation +1;

}

void lines(float c, float c2, float c3) { // created a method for efficiency, not having the need to repeat the the for loop
  for (int i =0; i<150; i++) { //for loop used to create 200 lines we the sketch is run.
    rotate(angle); 
    stroke(c, c2, c3);
    line (x, i-m, x2, 3*i++);
    print(frameCount);
  }
} 
void keyPressed() { //added interactively in the sketch to allow users to capture a stationary image 
  if (key == 'a') {
    noLoop(); // when the user press the key 'a' the program stops looping
  } 
  if (key == 's') {
    loop()  ; // else if the user press 's' the program continues to loop again
  }
}
