import 'package:flutter/material.dart';

export 'package:instagram_redesign_apps/models/ig_activity.dart';
export 'package:instagram_redesign_apps/models/ig_collection.dart';
export 'package:instagram_redesign_apps/models/ig_external_platform.dart';
export 'package:instagram_redesign_apps/models/ig_post.dart';
export 'package:instagram_redesign_apps/models/ig_user.dart';
export 'package:instagram_redesign_apps/models/ig_user_stories.dart';

enum SettingsSate { visible, hide }

enum ViewState { ample, clean, old }

class InstagramBloc with ChangeNotifier {
  SettingsSate settingState = SettingsSate.hide;
  ViewState viewState = ViewState.ample;
  ThemeMode themeMode = ThemeMode.light;

  void showSettings() {
    settingState = SettingsSate.visible;
    notifyListeners();
  }

  void hideSettings() {
    settingState = SettingsSate.hide;
    notifyListeners();
  }

  void changeView(ViewState state) {
    viewState = state;
    notifyListeners();
  }

  void setThemeMode(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }
}
