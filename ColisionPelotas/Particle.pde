class Particle {
  float x, y;
  float vx, vy;
  float life;
  color c;

  Particle(float x, float y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
    float angle = random(TWO_PI);
    float speed = random(1, 5);
    vx = cos(angle) * speed;
    vy = sin(angle) * speed;
    life = 255;
  }

  void update() {
    x += vx;
    y += vy;
    life -= 4; // desvanecimiento
  }

  void display() {
    noStroke();
    fill(c, life);
    ellipse(x, y, 8, 8);
  }

  boolean isDead() {
    return life <= 0;
  }
}
/*
  -Las partículas tienen velocidad aleatoria y se desvanecen hasta desaparecer.
*/
