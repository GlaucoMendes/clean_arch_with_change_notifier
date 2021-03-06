import 'package:flutter/material.dart';
import 'package:clean_arch_change_notifier/data/repositories/properties_repository_impl.dart';
import 'package:clean_arch_change_notifier/domain/usecases/get_properties_usercase.dart';
import 'package:clean_arch_change_notifier/presentation/properties/components/order_dropdown_component.dart';
import 'package:clean_arch_change_notifier/presentation/properties/components/search_text_field_component.dart';
import 'package:clean_arch_change_notifier/presentation/properties/properties_states.dart';
import 'package:clean_arch_change_notifier/presentation/properties/properties_store.dart';
import 'package:clean_arch_change_notifier/presentation/properties/widgets/properties_card_widget.dart';

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

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
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
                    Row(children: [
                      Expanded(
                        flex: 5,
                        child: SearchTextFieldComponent(store: store),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 3,
                        child: OrderDropdownComponent(store: store),
                      ),
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
