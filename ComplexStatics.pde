// Complex Numbers Statics (Last upd. 4.2.24)

Complex Complex(float x_) {
  return new Complex(x_);
}

Complex Complex(float x_, float i_) {
  return new Complex(x_, i_);
}

Complex Complex(Vec2 v) {
  return new Complex(v);
}

Complex Complex(PVector v) {
  return new Complex(v);
}

Complex add(Complex c1, Complex c2) {
  c1.add(c2);
  return c1;
}

Complex add(Complex c, float x) {
  c.add(x);
  return c;
}

Complex sub(Complex c1, Complex c2) {
  c1.sub(c2);
  return c1;
}

Complex sub(Complex c, float x) {
  c.add(x);
  return c;
}

Complex mult(Complex c1, Complex c2) {
  c1.mult(c2);
  return c1;
}

Complex mult(Complex c, float x) {
  c.mult(x);
  return c;
}

Complex div(Complex c1, Complex c2) {
  c1.div(c2);
  return c1;
}

Complex div(Complex c, float x) {
  c.div(x);
  return c;
}

Complex inv(Complex c) {
  c.inv();
  return c;
}

Complex sq(Complex c) {
  c.sq();
  return c;
}

Complex cb(Complex c) {
  c.cb();
  return c;
}

float mag(Complex c) {
  return c.mag();
}

float magSq(Complex c) {
  return c.magSq();
}

float angle(Complex c) {
  return c.angle();
}

Complex normalize(Complex c) {
  c.normalize();
  return c;
}

Complex setMag(Complex c, float mag) {
  c.setMag(mag);
  return c;
}

Complex limit(Complex c, float mag) {
  c.limit(mag);
  return c;
}

Complex rotate(Complex c, float theta) {
  c.rotate(theta);
  return c;
}

Complex exp(Complex c) {
  return c.exp();
}

Complex expI(Complex c) {
  return c.expI();
}

Complex expNegI(Complex c) {
  return c.expNegI();
}

Complex log(Complex c) {
  return c.log();
}

Complex pow(Complex c1, Complex c2) {
  return c1.pow(c2);
}

Complex pow(Complex c1, float x) {
  return c1.pow(x);
}

Complex sqrt(Complex c) {
  return c.sqrt();
}
