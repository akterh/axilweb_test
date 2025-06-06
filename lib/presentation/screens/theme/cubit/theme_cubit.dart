import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ecom_axilweb/core/app/app_dependency.dart';
import 'package:ecom_axilweb/core/app/app_preference.dart';

import '../app_theme.dart';


part 'theme_state.dart';

@injectable
class ThemeCubit extends Cubit<ThemeState> {
  final AppPreferences _appPreferences;

  ThemeCubit()
      : _appPreferences = instance.get(),
        super(const ThemeState()) {
    loadCurrentTheme();
    if (_darkTheme) {
      emit(state.copyWith(themeMode: ThemeModeStatus.dark));
    } else {
      emit(state.copyWith(themeMode: ThemeModeStatus.light));
    }
  }

  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    if (_darkTheme) {
      changeStatusBarTheme(ThemeMode.dark);
      _appPreferences.setIsAppDarkTheme(true);
      emit(state.copyWith(themeMode: ThemeModeStatus.dark));
    } else {
      changeStatusBarTheme(ThemeMode.light);
      _appPreferences.setIsAppDarkTheme(false);
      emit(state.copyWith(themeMode: ThemeModeStatus.light));
    }
  }

  void loadCurrentTheme() {
    log('is Dark mode ${_appPreferences.getIsAppDarkTheme()}');
    changeStatusBarTheme(
        _appPreferences.getIsAppDarkTheme() ? ThemeMode.dark : ThemeMode.light);
    _darkTheme = _appPreferences.getIsAppDarkTheme();
  }

  void changeStatusBarTheme(ThemeMode selectedMode) {
    AppTheme.setStatusBarAndNavigationBarColors(selectedMode);
  }
}
