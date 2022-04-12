import 'my_button_and_text.dart';

class MyButtonAndTextComponent2 extends MyButtonAndTextComponent {
  MyButtonAndTextComponent2() {
    print('asdfa');
    textButton = 'stateful 2';
  }

  @override
  void increment() {
    counter += 2;
  }
}
