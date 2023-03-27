
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rider/presentation/uiproviders/ui_provider.dart';

class InitProvider {
  static List<SingleChildWidget> providerInit() {
    final List<SingleChildWidget> provided = [
       ChangeNotifierProvider(
        create: (context) => UiProvider(),)
   
    ];

    return provided;
  }
}
