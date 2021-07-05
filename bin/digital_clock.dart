class Chain {
  String title;
  int hour;
  int minute;
  int state = 0;

  Chain(this.title, this.hour, this.minute) {
    if (hour == 0 && minute == 0) {
      state = 1;
    } else {
      state = 0;
    }
  }

  void Set() {
    if (state == 0) {
      ShowString();
      state = 1;
    } else if (state == 1) {
      state = 2;
    } else if (state == 2) {
      state = 0;
    }
  }

  void Int() {
    if (state == 1) {
      hour = (hour + 1) % 24;
    } else if (state == 2) {
      minute = (minute + 1) % 60;
    }
    ShowTime();
  }

  void ShowString() {
    print(
        'time is ---- ${hour.toString().padLeft(2, '0')} : ${minute.toString().padLeft(2, '0')} ----');
  }

  void ShowTime() {
    if (state == 1) {
      print('hour     = ${hour.toString().padLeft(2, '0')}');
    } else if (state == 2) {
      print('minute   = ${minute.toString().padLeft(2, '0')}');
    }
  }
}

void main(List<String> arguments) {
  var chain = Chain('on', 18, 0);

  chain.Set();
  chain.Int();

  chain.Set();
  chain.Int();

  chain.Set();
  chain.Int();

  chain.Int();

  chain.Set();
}
