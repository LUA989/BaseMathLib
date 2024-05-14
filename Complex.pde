// Complex Numbers (Last upd. 4.2.24)

// Constants
final Complex ZERO = new Complex(0, 0);
final Complex ONE = new Complex(1, 0);
final Complex NEGA_ONE = new Complex(-1, 0);
final Complex I = new Complex(0, 1);
final Complex NEGA_I = new Complex(0, -1);

class Complex {
  float x, i;
  
  Complex() {}
  
  Complex(float x_) {
    x = x_;
  }
  
  Complex(float x_, float i_) {
    x = x_;
    i = i_;
  }
  
  Complex(Vec2 v) {
    x = v.x;
    i = v.y;
  }
  
  Complex(PVector v) {
    x = v.x;
    i = v.y;
  }
  
  Complex(Complex v) {
    x = v.x;
    i = v.i;
  }
  
  void set(float x_) {
    x = x_;
  }
  
  void set(float x_, float i_) {
    x = x_;
    i = i_;
  }
  
  void set(Vec2 v) {
    x = v.x;
    i = v.y;
  }
  
  void set(PVector v) {
    x = v.x;
    i = v.y;
  }
  
  void set(Complex v) {
    x = v.x;
    i = v.i;
  }
  
  Complex get() {
    return this;
  }
  
  Complex copy() {
    return this;
  }
  
  void add(Complex c) {
    x += c.x;
    i += c.i;
  }
  
  void add(float x_) {
    x += x_;
  }
  
  void sub(Complex c) {
    x -= c.x;
    i -= c.i;
  }
  
  void sub(float x_) {
    x -= x_;
  }
  
  void mult(Complex c) {
    float oldX = x;
    x = x * c.x - i * c.i;
    i = i * c.x + oldX * c.i;
  }
  
  void mult(float x_) {
    x = x * x_;
    i = i * x_;
  }
  
  void div(Complex c) {
    float oldX = x;
    x = (x * c.x + i * c.i) / (c.x * c.x + c.i * c.i);
    i = (i * c.x - oldX * c.i) / (c.x * c.x + c.i * c.i);
  }
  
  void div(float x_) {
    x = x / x_;
    i = i / x_;
  }
  
  void inv() {
    float oldX = x;
    x /= x * x + i * i;
    i /= -(oldX * oldX + i * i);
  }
  
  void sq() {
    float oldX = x;
    x = x * x - i * i;
    i = 2.0 * oldX * i;
  }
  
  void cb() {
    float oldX = x;
    x = x * x * x - 3 * x * i * i;
    i = 3 * oldX * i * i - i * i * i;
  }
  
  float mag() {
    return PApplet.sqrt(x * x + i * i);
  }
  
  float magSq() {
    return x * x + i * i;
  }
  
  float angle() {
    return atan2(i, x);
  }
  
  void normalize() {
    float mag = mag();
    x /= mag;
    i /= mag;
  }
  
  void setMag(float m) {
    normalize();
    mult(m);
  }
  
  void limit(float m) {
    if(mag() > m) setMag(m);
  }
  
  void rotate(float theta) {
    float sin = PApplet.sin(theta);
    float cos = PApplet.cos(theta);
    float oldX = x;
    x = x    * cos - i * sin;
    i = oldX * cos + i * sin;
  }
  
  Complex exp() {
    Complex exp = new Complex(PApplet.cos(x), PApplet.sin(i));
    exp.mult(PApplet.exp(x));
    return exp;
  }
  
  Complex expI() {
    Complex exp = new Complex(-PApplet.sin(i), PApplet.cos(x));
    exp.mult(PApplet.exp(x));
    return exp;
  }
  
  Complex expNegI() {
    Complex exp = new Complex(PApplet.sin(i), -PApplet.cos(x));
    exp.mult(PApplet.exp(x));
    return exp;
  }
  
  Complex log() {
    return new Complex(PApplet.log(mag()), angle());
  }
  
  Complex pow(Complex z) {
    z.mult(log());
    return z.exp();
  }
  
  Complex pow(float x) {
    Complex z = log();
    z.mult(x);
    return z.exp();
  }
  
  Complex sqrt() {
    float mag = mag();
    return new Complex(PApplet.sqrt((x + mag) / 2), PApplet.sqrt((mag - x) / 2) * sign(i));
  }
  
  String toString() {
    return "Re: " + x + " Im: " + i;
  }
}
