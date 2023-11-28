class Debris {

    float x, y, r, speed;

    Debris() {
        this.x = random(width);
        this.y = random(height);
        this.r = 5;
        this.speed = random(1, 5);
    }

    void update() {
        this.x += this.speed;
        this.y += this.speed;

        if (this.x > width || this.x < 0 || this.y > height || this.y < 0) {
            this.x = random(width);
            this.y = random(height);
            this.speed = random(1, 5);
        }
    }

    void drawDebris() {
        fill(255, 0, 0);
        noStroke();
        ellipse(this.x, this.y, this.r * 2, this.r * 2);
    }
}

class Score {

    int score = 0;
    float x;  // Define the x value here

    Score(float x) {
        this.x = x;
    }

    void showScore() {
        fill(255);
        textAlign(CENTER);
        textSize(60);
        text(score, x, height - 20);
    }
}
