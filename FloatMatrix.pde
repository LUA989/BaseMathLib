// Matrix of floats (WIP)

class FloatMatrix {
  float[][] array;
  
  FloatMatrix(float[][] a) {
    array = a;
  }
  
  FloatMatrix(int cols, int rows) {
    array = new float[cols][rows];
  }
  
  int[] dimensions() {
    int[] dimensions = {array.length, array[0].length};
    return dimensions;
  }
  
  int getCols() {
    return array[0].length;
  }
  
  int getRows() {
    return array.length;
  }
  
  void flat() {
    int l = getCols() * getRows();
    float[][] arr = new float[l][1];
    for(int i = 0; i < getCols(); i++) {
      for(int j = 0; j < getRows(); j++) {
        arr[i * getCols() + j][1] = array[i][j];
      }
    }
    array = arr;
  }
  
  void add(FloatMatrix m) throws IllegalArgumentException {
    if(getCols() != m.getCols() || getRows() != m.getCols()) throw new IllegalArgumentException();
    for(int j = 0; j < getRows(); j++) {
      for(int i = 0; i < getCols(); i++) {
        array[i][j] += m.array[i][j];
      }
    }
  }
  
  void sub(FloatMatrix m) throws IllegalArgumentException {
    if(getCols() != m.getCols() || getRows() != m.getCols()) throw new IllegalArgumentException();
    for(int j = 0; j < getRows(); j++) {
      for(int i = 0; i < getCols(); i++) {
        array[i][j] -= m.array[i][j];
      }
    }
  }
  
  void mult(float x) {
    for(int j = 0; j < getRows(); j++) {
      for(int i = 0; i < getCols(); i++) {
        array[i][j] *= x;
      }
    }
  }
  
  void mult(FloatMatrix m) throws IllegalArgumentException {
    if(getCols() != m.getRows()) throw new IllegalArgumentException();
    
    float[][] arr = new float[getCols()][m.getRows()];
    
    for(int j = 0; j < getRows(); j++) {
      for(int i = 0; i < getCols(); i++) {
        for(int k = 0; k < getCols(); k++) {
          arr[i][j] += array[i][k] * m.array[k][j];
        }
      }
    }
    array = arr;
  }
}
