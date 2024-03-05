part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class GetCurrentThemeEvent extends ThemeEvent {}

// this event will be used in the settings page when we select a theme
class ThemeChangedEvent extends ThemeEvent {
  final Apptheme theme;

  const ThemeChangedEvent({required this.theme});

  @override
  List<Object> get props => [theme];  
}