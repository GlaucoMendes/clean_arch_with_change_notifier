import 'package:flutter/material.dart';
import 'package:clean_arch_change_notifier/presentation/properties/properties_screen.dart';

import 'widgets/icon_button_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset('assets/images/logo.png'),
          ),
          title: const TabBar(
            tabs: [
              TabIcon(icon: Icons.house),
              TabIcon(icon: Icons.handshake),
              TabIcon(icon: Icons.notifications),
              TabIcon(icon: Icons.logout),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            PropertiesScreen(),
            Text('Pagina 2'),
            Text('Pagina 3'),
            Text('Pagina 4'),
          ],
        ),
      ),
    );
  }
}
