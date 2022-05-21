import 'package:flutter/material.dart';
import 'package:pilar_mobile_case/data/repositories/properties_repository_impl.dart';
import 'package:pilar_mobile_case/presentation/properties/properties_states.dart';
import 'package:pilar_mobile_case/presentation/properties/properties_store.dart';

class PropertiesScreen extends StatefulWidget {
  const PropertiesScreen({Key? key}) : super(key: key);

  @override
  State<PropertiesScreen> createState() => _PropertiesScreenState();
}

class _PropertiesScreenState extends State<PropertiesScreen> {
  final store = PropertiesStore(PropertiesRepositoryImpl());
  @override
  void initState() {
    super.initState();
    store.fetchProperties();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: store,
            builder: (_, state, __) {
              if (state is InitialPropertiesState) {
                return const Text('Initial State');
              }
              if (state is LoadingPropertiesState) {
                return const CircularProgressIndicator();
              }
              if (state is SuccessPropertiesState) {
                return Text(state.properties.first.toJson().toString());
              }
              return const Text('Error State');
            },
          )
        ],
      ),
    );
  }
}
