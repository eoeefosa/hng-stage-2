import 'package:cv_app/src/data/cvdata.dart';
import 'package:cv_app/src/model/cv_model.dart';
import 'package:flutter/material.dart';

class CvProvider extends ChangeNotifier {
  late CvModel cvdata;

  static final CvProvider _instance = CvProvider._internal();
  factory CvProvider() {
    return _instance;
  }

  CvProvider._internal();

  void init() {
    cvdata = cvdatas;
    notifyListeners();
  }

  void updatecv(CvModel newcvdata) {
    cvdata = newcvdata;
    notifyListeners();
  }
}
