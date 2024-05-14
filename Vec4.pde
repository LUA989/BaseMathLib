// 4D Vectors (Last upd. 1.14.24)

class Vec4 {
  float x, y, z, w;
  
  Vec4() {}
  
  Vec4(float x_) {
    x = x_;
    y = x_;
    z = x_;
    w = x_;
  }
  
  Vec4(float x_, float y_, float z_, float w_) {
    x = x_;
    y = y_;
    z = z_;
    w = w_;
  }
  
  Vec4(Vec2 v) {
    x = v.x;
    y = v.y;
    z = 0.0;
    w = 0.0;
  }
  
  Vec4(Vec3 v) {
    x = v.x;
    y = v.y;
    z = v.z;
    w = 0.0;
  }
  
  Vec4(Vec4 v) {
    x = v.x;
    y = v.y;
    z = v.z;
    w = v.w;
  }
  
  Vec4(PVector v) {
    x = v.x;
    y = v.y;
    z = v.z;
    w = 0.0;
  }
  
  void set(float x_) {
    x = x_;
    y = x_;
    z = x_;
    w = x_;
  }
  
  void set(float x_, float y_, float z_) {
    x = x_;
    y = y_;
    z = z_;
    w = 0.0;
  }
  
  void set(Vec2 v) {
    x = v.x;
    y = v.y;
    z = 0.0;
    w = 0.0;
  }
  
  void set(Vec3 v) {
    x = v.x;
    y = v.y;
    z = v.z;
    w = 0.0;
  }
  
  void set(Vec4 v) {
    x = v.x;
    y = v.y;
    z = v.z;
    w = v.w;
  }
  
  void set(PVector v) {
    x = v.x;
    y = v.y;
    z = v.z;
    w = 0.0;
  }
  
  Vec4 get() {
    return this;
  }
  
  Vec4 copy() {
    return this;
  }
  
  PVector PVector() {
    return new PVector(x, y, z);
  }
  
  float[] array() {
    float[] m = new float[4];
    m[0] = x;
    m[1] = y;
    m[2] = z;
    m[3] = w;
    return m;
  }
  
  
  
  void add(Vec4 v) {
    x += v.x;
    y += v.y;
    z += v.z;
    w += v.w;
  }
  
  void sub(Vec4 v) {
    x -= v.x;
    y -= v.y;
    z -= v.z;
    w -= v.w;
  }
  
  void mult(float s) {
    x *= s;
    y *= s;
    z *= s;
    w *= s;
  }
  
  void div(float s) {
    x /= s;
    y /= s;
    z /= s;
    w /= s;
  }
  
  void reverse() {
    x *= -1;
    y *= -1;
    z *= -1;
    w *= -1;
  }
  
  float mag() {
    return sqrt(x * x + y * y + z * z + w * w);
  }
  
  float magSq() {
    return x * x + y * y + z * z + w * w;
  }
  
  float dot(Vec4 v) {
    return x * v.x + y * v.y + z * v.z + w * v.w;
  }
  
  void normalize() {
    div(mag());
  }
  
  void norm() {
    div(mag());
  }
  
  void setMag(float mag) {
    norm();
    mult(mag);
  }
  
  void limit(float mag) {
    if(mag() > mag) setMag(mag);
  }
  
  void rand() {
    x = random(-1.0, 1.0);
    y = random(-1.0, 1.0);
    z = random(-1.0, 1.0);
    w = random(-1.0, 1.0);
  }
  
  void rand(float mag) {
    x = random(-1.0, 1.0);
    y = random(-1.0, 1.0);
    z = random(-1.0, 1.0);
    w = random(-1.0, 1.0);
    setMag(mag);
  }
  
  void rand(float minX, float minY, float minZ, float minW, float maxX, float maxY, float maxZ, float maxW) {
    x = random(minX, maxX);
    y = random(minY, maxY);
    z = random(minZ, maxZ);
    w = random(minW, maxW);
  }
  
  void rand(float maxX, float maxY, float maxZ, float maxW) {
    x = random(0, maxX);
    y = random(0, maxY);
    z = random(0, maxZ);
    w = random(0, maxW);
  }
  
  void lerp(Vec4 v, float t) {
    x = PApplet.lerp(x, v.x, t);
    y = PApplet.lerp(y, v.y, t);
    z = PApplet.lerp(z, v.z, t);
    w = PApplet.lerp(w, v.w, t);
  }
  
  float angleBetween(Vec4 v) {
    return acos(dot(v) / (mag() * v.mag()));
  }
  
  float projection(Vec4 v2) {
    return dot(v2) / v2.mag();
  }
  
  Vec4 projectionVec(Vec4 v2) {
    Vec4 output = this;
    output.mult(dot(v2) / v2.mag());
    return output;
  }
  
  String toString() {
    return "( " + x + ", " + y + ", " + z + " )";
  }
}
