class Chain {
  String title;
  int hour;
  int minute;
  int state;

  Chain(this.title, this.hour, this.minute, this.state) {
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
  }

  void Int() {
    if (state == 1) {
      hour = (hour + 1) % 24;
    } else if (state == 2) {
      minute = (minute + 1) % 60;
    }
  }

  void ShowString() {
    print('time is ---- $hour : $minute ----');
  }
}

void main(List<String> arguments) {
  var chain = Chain('on', 18, 0, 0);
  chain.ShowString(); //18.00
  chain.Set(); //18.00
  chain.Int(); //19.00
  chain.ShowString();
  chain.Set(); //19.00
  chain.Int(); //19.01
  chain.Set();
  chain.Set();
  chain.Int();
  chain.ShowString();
  chain.Int();
  chain.ShowString();
  chain.Int();
  chain.ShowString();
  chain.Int();
  chain.ShowString();
  chain.Int();
  chain.ShowString();
  chain.Int();
  chain.ShowString();
}
