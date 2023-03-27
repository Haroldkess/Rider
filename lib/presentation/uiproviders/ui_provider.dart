import 'package:flutter/cupertino.dart';

class UiProvider extends ChangeNotifier {
  bool isSwitched = false;

  bool isDismissed = false;

  void dismiss(bool dis) {
    isDismissed = dis;
    notifyListeners();
  }

    void swtch(bool swi) {
    isSwitched = swi;
    notifyListeners();
  }
}
