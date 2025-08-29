class Ball {
  float x, y;
  float r;
  color c;
  float vx, vy;

  Ball(float x, float y, float r, color c, float vx, float vy) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;
    this.vx = vx;
    this.vy = vy;
  }

  void update() {
    x += vx;
    y += vy;
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, r*2, r*2);
  }
}
