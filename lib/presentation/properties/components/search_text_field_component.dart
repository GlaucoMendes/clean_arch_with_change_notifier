import 'package:flutter/material.dart';
import 'package:pilar_mobile_case/presentation/properties/properties_store.dart';

class SearchTextFieldComponent extends StatelessWidget {
  final PropertiesStore store;
  const SearchTextFieldComponent({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.all(8),
        border: OutlineInputBorder(),
        hintText: 'endereço, cidade, nome ',
        hintStyle: TextStyle(fontSize: 14),
        suffixIcon: Icon(Icons.search),
      ),
      onChanged: (value) => store.search(value),
    );
  }
}
