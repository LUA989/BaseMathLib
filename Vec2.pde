// 2D Vectors (Last upd. 1.14.24)

class Vec2 {
  float x, y;
  
  Vec2() {}
  
  Vec2(float x_) {
    x = x_;
    y = x_;
  }
  
  Vec2(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  Vec2(Vec2 v) {
    x = v.x;
    y = v.y;
  }
  
  Vec2(PVector v) {
    x = v.x;
    y = v.y;
  }
  
  void set(float x_) {
    x = x_;
    y = x_;
  }
  
  void set(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void set(Vec2 v) {
    x = v.x;
    y = v.y;
  }
  
  void set(PVector v) {
    x = v.x;
    y = v.y;
  }
  
  Vec2 get() {
    return this;
  }
  
  Vec2 copy() {
    return this;
  }
  
  PVector PVector() {
    return new PVector(x, y);
  }
  
  float[] array() {
    float[] m = new float[2];
    m[0] = x;
    m[1] = y;
    return m;
  }
  
  
  
  void add(Vec2 v) {
    x += v.x;
    y += v.y;
  }
  
  void sub(Vec2 v) {
    x -= v.x;
    y -= v.y;
  }
  
  void mult(float s) {
    x *= s;
    y *= s;
  }
  
  void div(float s) {
    x /= s;
    y /= s;
  }
  
  void reverse() {
    x *= -1;
    y *= -1;
  }
  
  float mag() {
    return sqrt(x * x + y * y);
  }
  
  float magSq() {
    return x * x + y * y;
  }
  
  float dot(Vec2 v) {
    return x * v.x + y * v.y;
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
  
  void rotate(float theta) {
    float sin = sin(theta);
    float cos = cos(theta);
    float tempX = x;
    
    x = x * cos - y * sin;
    y = y * cos + tempX * sin;
  }
  
  float angle() {
    return atan2(y, x);
  }
  
  void rand() {
    x = random(-1.0, 1.0);
    y = random(-1.0, 1.0);
  }
  
  void rand(float mag) {
    x = random(-1.0, 1.0);
    y = random(-1.0, 1.0);
    setMag(mag);
  }
  
  void rand(float minX, float minY, float maxX, float maxY) {
    x = random(minX, maxX);
    y = random(minY, maxY);
  }
  
  void rand(float maxX, float maxY) {
    x = random(0, maxX);
    y = random(0, maxY);
  }
  
  void lerp(Vec2 v, float t) {
    x = PApplet.lerp(x, v.x, t);
    y = PApplet.lerp(y, v.y, t);
  }
  
  float angleBetween(Vec2 v) {
    return acos(dot(v) / (mag() * v.mag()));
  }
  
  Vec2 perpCW() {
    return new Vec2(y, -x);
  }
  
  Vec2 perpCCW() {
    return new Vec2(-y, x);
  }
  
  float projection(Vec2 v2) {
    return dot(v2) / v2.mag();
  }
  
  Vec2 projectionVec(Vec2 v2) {
    Vec2 output = this;
    output.mult(dot(v2) / v2.mag());
    return output;
  }
  
  String toString() {
    return "( " + x + ", " + y + " )";
  }
}
