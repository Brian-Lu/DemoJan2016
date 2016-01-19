class Player extends Person{
   int light;
   int lives;
   int keys;
   Player(){
     super(); 
     light = 20;
     lives = 5;
     keys = 5;
   }
   Player(float Xpos,float Ypos,int Speed, int Health){
     super(Xpos,Ypos,Speed,Health); 
     light = 20;
     lives = 5;
     keys = 5;
   }
   void move(){
     if (key == CODED){
       if(keyCode == UP){
         ypos -= speed * 1.0;
       }else if(keyCode==DOWN){
         ypos += speed * 1.0;
       }else if(keyCode==RIGHT){
         xpos += speed * 1.0;
       }else if(keyCode==LEFT){
         xpos -= speed * 1.0;
       }
     }
   }
   boolean hasKEY(){
     if(keys>0){
        keys -= 1;
        return true;
     }
     return false;
   }
   void display(){
      ellipse(xpos,ypos,20,20);
      /*rect( xpos - 10, ypos + 10, 20, 40);
      line(xpos + 10, ypos + 20, xpos + 15, ypos + 5);
      line(xpos - 10, ypos + 20, xpos - 15, ypos + 5);
      line(xpos + 10, ypos + 50, xpos + 15, ypos + 60);
      line(xpos - 10, ypos + 50, xpos - 15, ypos + 60);
      */
   }
   
}