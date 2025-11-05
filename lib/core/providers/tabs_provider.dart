import 'package:flutter/material.dart';

import '../constants/tabs_enum.dart';

class TabsProvider extends ChangeNotifier {
  TabsEnum _currentTab = TabsEnum.about;

  TabsEnum get currentTab => _currentTab;

  set currentTab(TabsEnum v) {
    if (v == _currentTab) return;
    _currentTab = v;
    notifyListeners();
  }
}
