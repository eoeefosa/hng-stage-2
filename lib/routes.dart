import 'package:cv_app/src/data/cvdata.dart';
import 'package:cv_app/src/view/home_screen.dart';
import 'package:flutter/widgets.dart';

import 'src/view/edit_cv_screen.dart';

final routes = <String, WidgetBuilder>{
  '/': (context) => const MyHomePage(),
  '/editcv': (context) => EditCVScreen(cvmodel: cvdatas),
};

class AppRoute {
  AppRoute._();
  
  
}
