import 'dart:math';

import 'package:dynamic_theme_bloc/core/theme/app_theme.dart';
import 'package:dynamic_theme_bloc/core/theme/theme_cache_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitialState()) {
    on<ThemeEvent>((event, emit) async {
      if (event is GetCurrentThemeEvent)  {
       final themeIndex = await ThemeCacheHelper().getCachedThemeIndex();
       final theme = Apptheme.values.firstWhere((appTheme) => appTheme.index == themeIndex);
       emit(LoadedThemeState(themeData: appThemeData[theme]!));
      } else if (event is ThemeChangedEvent) {
        final themeIndex =  event.theme.index;
        await ThemeCacheHelper().themeCacheIndex(themeIndex);
        emit(LoadedThemeState(themeData: appThemeData[event.theme]!));
      }
    });
  }
}
