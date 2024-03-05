part of 'theme_bloc.dart';

/// here the benifit of the equatable is when we emit to the same state more than
/// once and this state holds the same data , there is no need to rebuild the widget
/// in order for flutter to know that the state with the data are the same
/// we need to override the hashCode , so the bloc will know if the state is the 
/// same or changed
abstract class ThemeState extends Equatable {
  const ThemeState();
  
  @override
  List<Object> get props => [];
}

final class ThemeInitialState extends ThemeState {}

final class LoadedThemeState extends ThemeState {
  final ThemeData themeData;

  const LoadedThemeState({required this.themeData});

  @override
  List<Object> get props => [themeData];

}

