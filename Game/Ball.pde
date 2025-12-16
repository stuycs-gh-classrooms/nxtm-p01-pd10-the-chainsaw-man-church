class Ball
{

    int x, y;
    int xspeed, yspeed;
    int bsize;

    Ball()
    {
        bsize = 20;

        x = int( random(bsize/2, width - bsize/2) );
        y = int( random(bsize/2, height - bsize/2) );

        xspeed = 1;
        yspeed = 1;
    }
    void display()
    {
        circle(x, y, bsize);
    }
    void move()
    {
        if (y >= height - bsize/2 ||
            y <= bsize/2) {
            yspeed *= -1;
        }

        if (x >= width - bsize/2 ||
            x <= bsize/2) {
            xspeed *= -1;
        }
        
        
        
        y+= yspeed;
        x+= xspeed;
    }

}
