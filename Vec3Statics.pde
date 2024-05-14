// 3D Vectors Statics (Last upd. 1.14.24)

Vec3 Vec3(float x_) {
  return new Vec3(x_);
}

Vec3 Vec3(float x_, float y_, float z_) {
  return new Vec3(x_, y_, z_);
}

Vec3 Vec3(Vec2 v) {
  return new Vec3(v);
}

Vec3 Vec3(Vec3 v) {
  return new Vec3(v);
}

Vec3 Vec3(PVector v) {
  return new Vec3(v);
}

PVector PVector(Vec3 v) {
  return new PVector(v.x, v.y, v.z);
}

float[] array(Vec3 v) {
  return v.array();
}

Vec3 add(Vec3 v1, Vec3 v2) {
  v1.add(v2);
  return v1;
}

Vec3 sub(Vec3 v1, Vec3 v2) {
  v1.sub(v2);
  return v1;
}

Vec3 mult(Vec3 v, float s) {
  v.mult(s);
  return v;
}

Vec3 div(Vec3 v, float s) {
  v.div(s);
  return v;
}

Vec3 reverse(Vec3 v) {
  v.reverse();
  return v;
}

float mag(Vec3 v) {
  return v.mag();
}

float magSq(Vec3 v) {
  return v.magSq();
}

float dot(Vec3 v1, Vec3 v2) {
  return v1.dot(v2);
}

Vec3 cross(Vec3 v1, Vec3 v2) {
  return v1.cross(v2);
}

float triple(Vec3 v1, Vec3 v2, Vec3 v3) {
  return v1.triple(v2, v3);
}

Vec3 normalize(Vec3 v) {
  v.norm();
  return v;
}

Vec3 norm(Vec3 v) {
  v.norm();
  return v;
}

Vec3 setMag(Vec3 v, float mag) {
  v.setMag(mag);
  return v;
}

Vec3 limit(Vec3 v, float mag) {
  v.limit(mag);
  return v;
}

Vec3 rotateX(Vec3 v, float theta) {
  v.rotateX(theta);
  return v;
}

Vec3 rotateY(Vec3 v, float theta) {
  v.rotateY(theta);
  return v;
}

Vec3 rotateZ(Vec3 v, float theta) {
  v.rotateZ(theta);
  return v;
}

Vec3 rotate(Vec3 v, float alpha, float beta, float gamma) {
  v.rotate(alpha, beta, gamma);
  return v;
}

float angleX(Vec3 v) {
  return v.angleX();
}

float angleY(Vec3 v) {
  return v.angleY();
}

float angleZ(Vec3 v) {
  return v.angleZ();
}

Vec3 rand() {
  return new Vec3(random(-1.0, 1.0), random(-1.0, 1.0), random(-1.0, 1.0));
}

Vec3 rand(float mag) {
  Vec3 v = rand();
  v.setMag(mag);
  return v;
}

Vec3 rand(float minX, float minY, float minZ, float maxX, float maxY, float maxZ) {
  return new Vec3(random(minX, maxX), random(minY, maxY), random(minZ, maxZ));
}

Vec3 rand(float maxX, float maxY, float maxZ) {
  return new Vec3(random(0, maxX), random(0, maxY), random(0, maxZ));
}

Vec3 lerp(Vec3 v1, Vec3 v2, float t) {
  v1.lerp(v2, t);
  return v1;
}

float angleBetween(Vec3 v1, Vec3 v2) {
  return acos(v1.dot(v2) / (v1.mag() * v2.mag()));
}

float projection(Vec3 v1, Vec3 v2) {
  return v1.projection(v2);
}

Vec3 projectionVec(Vec3 v1, Vec3 v2) {
  return v1.projectionVec(v2);
}
