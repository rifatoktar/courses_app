import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../theme/dark_theme_provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return Icon(
          Icons.check,
          color: Colors.white,
        );
      }
      return Icon(Icons.close);
    },
  );
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Dark Mode',
                  style: Theme.of(context).textTheme.headlineLarge),
                  Spacer(),
              Switch(
                  thumbIcon: thumbIcon,
                  value: themeChange.darkTheme,
                  onChanged: (bool? value) {
                    themeChange.darkTheme = value!;
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
