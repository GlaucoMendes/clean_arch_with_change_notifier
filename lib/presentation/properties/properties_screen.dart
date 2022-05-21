import 'package:flutter/material.dart';
import 'package:pilar_mobile_case/data/repositories/properties_repository_impl.dart';
import 'package:pilar_mobile_case/domain/usercases/get_properties_usercase.dart';
import 'package:pilar_mobile_case/presentation/properties/properties_states.dart';
import 'package:pilar_mobile_case/presentation/properties/properties_store.dart';
import 'package:pilar_mobile_case/presentation/properties/widgets/properties_card_widget.dart';

class PropertiesScreen extends StatefulWidget {
  const PropertiesScreen({Key? key}) : super(key: key);

  @override
  State<PropertiesScreen> createState() => _PropertiesScreenState();
}

class _PropertiesScreenState extends State<PropertiesScreen> with AutomaticKeepAliveClientMixin<PropertiesScreen> {
  final store = PropertiesStore(GetPropertiesUsecase(PropertiesRepositoryImpl()));
  @override
  void initState() {
    super.initState();
    store.fetchProperties();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ValueListenableBuilder(
            valueListenable: store,
            builder: (_, state, __) {
              if (state is InitialPropertiesState) {
                return const Text('Initial State');
              }
              if (state is LoadingPropertiesState) {
                return const CircularProgressIndicator();
              }
              if (state is SuccessPropertiesState) {
                return Column(
                  children: [
                    Row(children: const [
                      Expanded(
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 32,
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      crossAxisSpacing: 8,
                      childAspectRatio: 9 / 14,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 8,
                      children: List.generate(
                        state.properties.length,
                        (index) {
                          var propertie = state.properties[index];
                          return PropertiesCardWidget(propertie: propertie);
                        },
                      ),
                    ),
                  ],
                );
              }
              return const Text('Error State');
            },
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
