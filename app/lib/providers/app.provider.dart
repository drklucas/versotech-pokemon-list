import 'package:app/requester/requester.dart';
import 'package:app/requester/requester.dio.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

class AppProvider {
  static List<SingleChildWidget> items = [
    //DEPENDECIE INJECTIONS
    InheritedProvider<RequestDispatcher>(
      create: (_) => DioRequestDispatcher(),
    ),
  ];
}
