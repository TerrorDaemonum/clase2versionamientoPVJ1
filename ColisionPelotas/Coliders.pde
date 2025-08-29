// *** COLLIDER CIRCULAR ***
// Devuelve true si la distancia entre centros <= suma de radios
boolean checkCollision(Ball a, Ball b) {
  float distCenters = dist(a.x, a.y, b.x, b.y);
  return distCenters <= (a.r + b.r);
}
/*
- Colisionador circular basado en la distanciantre centros (dist) y la suma de radios.
- El momento de la colisión se detecta una sola vez y dispara la creación de partículas.
*/
