import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Center(
        child: CupertinoSwitch(
            value: Provider.of<ThemeProvider>(context).isDarkMode,
            // Sometimes, you don't really need the data in the model to change the UI but you still need to access it.
            onChanged: (p0) =>
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme()),
      ),
    );
  }
}
