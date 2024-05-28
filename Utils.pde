// Some Important Functions (Last upd. 5.14.24)

float sgn(float x) {
  float output = 0.0;
  if(x > 0) output = 1.0;
  if(x < 0) output = -1.0;
  return output;
}

float sign(float x) {
  float output = 0.0;
  if(x > 0) output = 1.0;
  if(x < 0) output = -1.0;
  return output;
}

float clamp(float x, float min, float max) {
  return max(min(x, max), min);
}

float limit(float x, float max) {
  return min(x, max);
}

float cb(float x) {
  return x * x * x;
}

Complex[] fourier(float[] input) {
  int l = input.length;
  Complex[] output = new Complex[l];
  
  for (int k = 0; k < l; k++) {
    float re = 0;
    float im = 0;
    
    for (int n = 0; n < l; n++) {
      float angle = TWO_PI * k * n / l;
      re += input[n] * cos(angle);
      im -= input[n] * sin(angle);
    }
    
    output[k] = new Complex(re, im);
  }
  
  return output;
}

float[] invertedFourier(Complex[] input) {
  int l = input.length;
  float[] output = new float[l];
  
  for (int n = 0; n < l; n++) {
    float re = 0;
    
    for (int k = 0; k < l; k++) {
      float angle = TWO_PI * k * n / l;
      re += input[k].x * cos(angle) - input[k].i * sin(angle);
    }
    
    output[n] = re / l;
  }
  
  return output;
}
