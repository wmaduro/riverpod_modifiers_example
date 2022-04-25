class BssRoot {
  final String field1;

  BssRoot(this.field1);

  void bbsrootfunc1() {
    final a = 10 * 40; //FEATURE1

    final a1 = 10 * 50; //BUG2
  }
}
