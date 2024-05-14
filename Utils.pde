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
