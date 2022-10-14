Player player;

int gamestate = 0;

int w;
int h;

void setup(){
  size(1000, 800, P3D);
  w = 1000;
  h = 800;
  player = new Player("potato2.png", new PVector(w/2, h/2), 25);

  
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
}


void draw(){
  if(gamestate == 0){
    background(0,255,0);
    //start screen begin
    
    //update
    textSize(100);
    text("Potato Rush!", 500, 200);
    //button
    
    //check
    if(mousePressed){
      gamestate = 1;
    }
    
        //draw
    fill(200, 0, 0);
    rect(500, 400, 940, 100);
    fill(0);
    text("Click anywhere to play",500, 380 );
    
  }
  
  if(gamestate == 1){
  //begin game
  background(0, 255, 0);
  //update
  player.update();
  player.render();
  
  //check
  
  
  //draw
  
  }
  
}
