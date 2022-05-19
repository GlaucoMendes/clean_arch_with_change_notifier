import 'package:flutter/material.dart';
import 'package:pilar_mobile_case/features/home/widgets/icon_button_widget.dart';

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
          title: TabBar(
            onTap: (index) {
              if (index == 3) {
                print('Show Dialog');
              }
            },
            indicatorWeight: 3,
            tabs: [
              TabIcon(icon: Icons.house),
              TabIcon(icon: Icons.handshake),
              TabIcon(icon: Icons.notifications),
              TabIcon(icon: Icons.logout),
            ],
          ),
        ),
        body: TabBarView(children: [
          Column(
            children: [
              const Text('Texto de teste'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Botão'),
              )
            ],
          ),
          Text('Pagina 2'),
          Text('Pagina 23'),
          Container(),
        ]),
        floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      ),
    );
  }
}
