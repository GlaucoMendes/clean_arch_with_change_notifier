import 'package:flutter/material.dart';

import 'package:pilar_mobile_case/infra/enums/order_by_enum.dart';
import 'package:pilar_mobile_case/presentation/properties/properties_store.dart';

class OrderDropdownComponent extends StatelessWidget {
  final PropertiesStore store;
  const OrderDropdownComponent({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<OrderBy>(
      isDense: true,
      isExpanded: true,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.all(8),
        border: OutlineInputBorder(),
        hintText: 'Ordernar por',
        hintStyle: TextStyle(fontSize: 14),
      ),
      items: const [
        DropdownMenuItem(
          value: OrderBy.none,
          child: Text('Padrão'),
        ),
        DropdownMenuItem(
          value: OrderBy.lowestPrice,
          child: Text('Menor Preço'),
        ),
        DropdownMenuItem(
          value: OrderBy.biggestPrice,
          child: Text('Maior Preço'),
        ),
      ],
      onChanged: (value) => store.orderBy(value ?? OrderBy.none),
    );
  }
}
