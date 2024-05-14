// 3D Vectors (Last upd. 1.14.24)

class Vec3 {
  float x, y, z;
  
  Vec3() {}
  
  Vec3(float x_) {
    x = x_;
    y = x_;
    z = x_;
  }
  
  Vec3(float x_, float y_, float z_) {
    x = x_;
    y = y_;
    z = z_;
  }
  
  Vec3(Vec2 v) {
    x = v.x;
    y = v.y;
    z = 0.0;
  }
  
  Vec3(Vec3 v) {
    x = v.x;
    y = v.y;
    z = v.z;
  }
  
  Vec3(PVector v) {
    x = v.x;
    y = v.y;
    z = v.z;
  }
  
  void set(float x_) {
    x = x_;
    y = x_;
    z = x_;
  }
  
  void set(float x_, float y_, float z_) {
    x = x_;
    y = y_;
    z = z_;
  }
  
  void set(Vec2 v) {
    x = v.x;
    y = v.y;
    z = 0.0;
  }
  
  void set(Vec3 v) {
    x = v.x;
    y = v.y;
    z = v.z;
  }
  
  void set(PVector v) {
    x = v.x;
    y = v.y;
    z = v.z;
  }
  
  Vec3 get() {
    return this;
  }
  
  Vec3 copy() {
    return this;
  }
  
  PVector PVector() {
    return new PVector(x, y, z);
  }
  
  float[] array() {
    float[] m = new float[3];
    m[0] = x;
    m[1] = y;
    m[2] = z;
    return m;
  }
  
  
  
  void add(Vec3 v) {
    x += v.x;
    y += v.y;
    z += v.z;
  }
  
  void sub(Vec3 v) {
    x -= v.x;
    y -= v.y;
    z -= v.z;
  }
  
  void mult(float s) {
    x *= s;
    y *= s;
    z *= s;
  }
  
  void div(float s) {
    x /= s;
    y /= s;
    z /= s;
  }
  
  void reverse() {
    x *= -1;
    y *= -1;
    z *= -1;
  }
  
  float mag() {
    return sqrt(x * x + y * y + z * z);
  }
  
  float magSq() {
    return x * x + y * y + z * z;
  }
  
  float dot(Vec3 v) {
    return x * v.x + y * v.y + z * v.z;
  }
  
  Vec3 cross(Vec3 v) {
    return new Vec3(y * v.z - z * v.y, z * v.x - x * v.z, x * v.y - y * v.x);
  }
  
  float triple(Vec3 v2, Vec3 v3) {
    v2.cross(v3);
    return dot(v2);
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
  
  void rotateX(float theta) {
    float sin = sin(theta);
    float cos = cos(theta);
    float tempY = y;
    
    y = x * cos - y * sin;
    z = y * cos + tempY * sin;
  }
  
  void rotateY(float theta) {
    float sin = sin(theta);
    float cos = cos(theta);
    float tempX = x;
    
    x = x * cos + z * sin;
    z = z * cos - tempX * sin;
  }
  
  void rotateZ(float theta) {
    float sin = sin(theta);
    float cos = cos(theta);
    float tempX = x;
    
    x = x * cos - y * sin;
    y = y * cos + tempX * sin;
  }
  
  void rotate(float alpha, float beta, float gamma) {
    rotateX(alpha);
    rotateY(beta);
    rotateZ(gamma);
  }
  
  float angleX() {
    return atan2(z, y);
  }
  
  float angleY() {
    return atan2(z, x);
  }
  
  float angleZ() {
    return atan2(y, x);
  }
  
  void rand() {
    x = random(-1.0, 1.0);
    y = random(-1.0, 1.0);
    z = random(-1.0, 1.0); 
  }
  
  void rand(float mag) {
    x = random(-1.0, 1.0);
    y = random(-1.0, 1.0);
    z = random(-1.0, 1.0); 
    setMag(mag);
  }
  
  void rand(float minX, float minY, float minZ, float maxX, float maxY, float maxZ) {
    x = random(minX, maxX);
    y = random(minY, maxY);
    z = random(minZ, maxZ);
  }
  
  void rand(float maxX, float maxY, float maxZ) {
    x = random(0, maxX);
    y = random(0, maxY);
    z = random(0, maxZ);
  }
  
  void lerp(Vec3 v, float t) {
    x = PApplet.lerp(x, v.x, t);
    y = PApplet.lerp(y, v.y, t);
    z = PApplet.lerp(z, v.z, t);
  }
  
  float angleBetween(Vec3 v) {
    return acos(dot(v) / (mag() * v.mag()));
  }
  
  float projection(Vec3 v2) {
    return dot(v2) / v2.mag();
  }
  
  Vec3 projectionVec(Vec3 v2) {
    Vec3 output = this;
    output.mult(dot(v2) / v2.mag());
    return output;
  }
  
  String toString() {
    return "( " + x + ", " + y + ", " + z + " )";
  }
}
