class Inc {}

class Chain {
  String title;
  int hour;
  int minute;
  int state;

  Chain(
    this.title,
    this.hour,
    this.minute,
    this.state,
  ) {
    if (hour == 0 && minute == 0) {
      state = 1;
    } else {
      state = 0;
    }
  }

  void Set() {
    if (state == 0) {
      state = 1;
    } else if (state == 1) {
      state = 2;
    } else if (state == 2) {
      state = 0;
    }

    print(state);
  }
}

void main(List<String> arguments) {
  final chain = Chain('on', 18, 0, 0);
  chain.Set();
  chain.Set();
  chain.Set();
}
