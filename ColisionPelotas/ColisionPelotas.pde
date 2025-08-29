Ball ball1, ball2;
ArrayList<Particle> particles;
boolean exploded = false;

void setup() {
  size(800, 600);
  ball1 = new Ball(200, height/2, 40, color(255, 255, 0), 3, 0);
  ball2 = new Ball(width-200, height/2, 40, color(0, 0, 255), -3, 0);
  particles = new ArrayList<Particle>();
}

void draw() {
  background(30);

  if (!exploded) {
    ball1.update();
    ball2.update();
    ball1.display();
    ball2.display();

    // *** COLLIDER CIRCULAR ***
    if (checkCollision(ball1, ball2)) {
      exploded = true;
      createParticles((ball1.x + ball2.x)/2, (ball1.y + ball2.y)/2, ball1.c);
      createParticles((ball1.x + ball2.x)/2, (ball1.y + ball2.y)/2, ball2.c);
    }
  } else {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.update();
      p.display();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}

void createParticles(float x, float y, color c) {
  for (int i = 0; i < 30; i++) {
    particles.add(new Particle(x, y, c));
  }
}
