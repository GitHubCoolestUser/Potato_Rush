class Player extends Npc{
  
  PImage  sprite;
  
  float speed = 5;
  
  
  Player(String sprite_, PVector position_, float r){
    sprite = loadImage(sprite_);
    position = new PVector(position_.x, position_.y);
    colliderObject = r;
  }
  
  void update(){
    if(keyPressed && key == 'd'){
      position.x += speed;
    }
    
    if(keyPressed && key == 'a'){
      position.x -= speed;
    }
    
    if(keyPressed && key == 'w'){
      position.y -= speed;
    }
    
    if(keyPressed && key == 's'){
      position.y += speed;
    }
  }
  
  void render(){
    imageMode(CENTER);
    image(sprite, position.x, position.y, colliderObject *2, colliderObject *2);
  }
  

}
