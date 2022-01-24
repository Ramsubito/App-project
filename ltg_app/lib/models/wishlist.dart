class Wish {
  String what;
  bool done;
  Wish(this.what, [this.done = false]);

  void toggleDone() => done = !done;
}
