// 2D Vectors Statics (Last upd. 1.14.24)

Vec2 Vec2(float x) {
  return new Vec2(x, x);
}

Vec2 Vec2(float x, float y) {
  return new Vec2(x, y);
}

Vec2 Vec2(Vec2 v) {
  return new Vec2(v.x, v.y);
}

Vec2 Vec2(PVector v) {
  return new Vec2(v.x, v.y);
}

PVector PVector(Vec2 v) {
  return new PVector(v.x, v.y);
}

Vec2 add(Vec2 v1, Vec2 v2) {
  v1.add(v2);
  return v1;
}

Vec2 sub(Vec2 v1, Vec2 v2) {
  v1.sub(v2);
  return v1;
}

Vec2 mult(Vec2 v, float s) {
  v.mult(s);
  return v;
}

Vec2 div(Vec2 v, float s) {
  v.div(s);
  return v;
}

Vec2 reverse(Vec2 v) {
  v.reverse();
  return v;
}

float mag(Vec2 v) {
  return sqrt(v.x * v.x + v.y * v.y);
}

float magSq(Vec2 v) {
  return v.x * v.x + v.y * v.y;
}

float dot(Vec2 v1, Vec2 v2) {
  return v1.x * v2.x + v1.y * v2.y;
}

Vec2 normalize(Vec2 v) {
  v.norm();
  return v;
}

Vec2 norm(Vec2 v) {
  v.norm();
  return v;
}

Vec2 setMag(Vec2 v, float mag) {
  v.setMag(mag);
  return v;
}

Vec2 limit(Vec2 v, float mag) {
  v.limit(mag);
  return v;
}

Vec2 rotate(Vec2 v, float theta) {
  v.rotate(theta);
  return v;
}

float angle(Vec2 v) {
  return atan2(v.y, v.x);
}

Vec2 perpCW(Vec2 v) {
  v.perpCW();
  return v;
}

Vec2 perpCCW(Vec2 v) {
  v.perpCCW();
  return v;
}

Vec2 lerp(Vec2 v1, Vec2 v2, float t) {
  v1.lerp(v2, t);
  return v1;
}

float angleBetween(Vec2 v1, Vec2 v2) {
  return acos(v1.dot(v2) / (v1.mag() * v2.mag()));
}

float projection(Vec2 v1, Vec2 v2) {
  return v1.projection(v2);
}

Vec2 projectionVec(Vec2 v1, Vec2 v2) {
  return v1.projectionVec(v2);
}

Vec2 rand(float minX, float minY, float maxX, float maxY) {
  return new Vec2(random(minX, maxX), random(minY, maxY));
}

Vec2 rand(float maxX, float maxY) {
  return new Vec2(random(0, maxX), random(0, maxY));
}
