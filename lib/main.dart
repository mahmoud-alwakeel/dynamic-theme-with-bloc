import 'package:dynamic_theme_bloc/core/theme/bloc/theme_bloc.dart';
import 'package:dynamic_theme_bloc/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(DynamicTheme());
}

class DynamicTheme extends StatelessWidget {
  const DynamicTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => ThemeBloc()..add(GetCurrentThemeEvent()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          if (state is LoadedThemeState) {
            return MaterialApp(
              theme: state.themeData,
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      );
          } else {
            return Container();
          }
        },
        
        )
    );
  }
}
