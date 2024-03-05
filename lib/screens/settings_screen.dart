import 'package:dynamic_theme_bloc/core/theme/app_theme.dart';
import 'package:dynamic_theme_bloc/core/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'), 
      ),
      body: ListView.builder(
        itemCount: Apptheme.values.length,
        itemBuilder: (context, index) {
          final appThemeItem = Apptheme.values[index];
          return Card(
            color: appThemeData[appThemeItem]!.primaryColor,
            child: ListTile(
              title: Text(
                appThemeItem.name,
                style: appThemeData[appThemeItem]!.textTheme.titleMedium,
              ),
              onTap: (){
                BlocProvider.of<ThemeBloc>(context).add(ThemeChangedEvent(theme: appThemeItem));
              },
            ),
          );
        }),
    );
  }
}