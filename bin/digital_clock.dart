class Inc {}

class Chan {
  int state;

  Chan({this.state = 0});

  void Set() {
    if (state == 0) {
      state = 1;
    } else if (state == 1) {
      state = 2;
    } else if (state == 2) {
      state = 0;
    }
  }
}

void main(List<String> arguments) {
  print('Hello world!');
}
