import 'package:flutter/material.dart';
import 'package:pilar_mobile_case/presentation/properties/properties_screen.dart';

import 'widgets/icon_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Image.asset('assets/images/logo.webp'),
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
        body: TabBarView(children: [
          const PropertiesScreen(),
          const Text('Pagina 2'),
          const Text('Pagina 23'),
          Container(),
        ]),
        floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      ),
    );
  }
}
