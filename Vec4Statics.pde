// 4D Vectors Statics (Last upd. 1.14.24)

Vec4 Vec4(float x_) {
  return new Vec4(x_, x_, x_, x_);
}

Vec4 Vec4(float x_, float y_, float z_, float w_) {
  return new Vec4(x_, y_, z_, w_);
}

Vec4 Vec4(Vec2 v) {
  return new Vec4(v.x, v.y, 0.0, 0.0);
}

Vec4 Vec4(Vec3 v) {
  return new Vec4(v.x, v.y, v.z, 0.0);
}

Vec4 Vec4(Vec4 v) {
  return new Vec4(v.x, v.y, v.z, v.z);
}

Vec4 Vec4(PVector v) {
  return new Vec4(v.x, v.y, v.z, 0.0);
}

float[] array(Vec4 v) {
  return v.array();
}

Vec4 add(Vec4 v1, Vec4 v2) {
  v1.add(v2);
  return v1;
}

Vec4 sub(Vec4 v1, Vec4 v2) {
  v1.sub(v2);
  return v1;
}

Vec4 mult(Vec4 v, float s) {
  v.mult(s);
  return v;
}

Vec4 div(Vec4 v, float s) {
  v.div(s);
  return v;
}

Vec4 reverse(Vec4 v) {
  v.reverse();
  return v;
}

float mag(Vec4 v) {
  return v.mag();
}

float magSq(Vec4 v) {
  return v.magSq();
}

float dot(Vec4 v1, Vec4 v2) {
  return v1.dot(v2);
}

Vec4 normalize(Vec4 v) {
  v.norm();
  return v;
}

Vec4 norm(Vec4 v) {
  v.norm();
  return v;
}

Vec4 setMag(Vec4 v, float mag) {
  v.setMag(mag);
  return v;
}

Vec4 limit(Vec4 v, float mag) {
  v.limit(mag);
  return v;
}

Vec4 lerp(Vec4 v1, Vec4 v2, float t) {
  v1.lerp(v2, t);
  return v1;
}

float angleBetween(Vec4 v1, Vec4 v2) {
  return acos(v1.dot(v2) / (v1.mag() * v2.mag()));
}

float projection(Vec4 v1, Vec4 v2) {
  return v1.projection(v2);
}

Vec4 projectionVec(Vec4 v1, Vec4 v2) {
  return v1.projectionVec(v2);
}
