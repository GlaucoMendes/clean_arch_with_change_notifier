import 'package:flutter/material.dart';
import 'package:pilar_mobile_case/data/models/properties_model.dart';

class PropertiesCardWidget extends StatelessWidget {
  final PropertiesModel propertie;
  const PropertiesCardWidget({Key? key, required this.propertie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxHeight: 120),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.network(
                propertie.images!.first.url!,
                loadingBuilder: (_, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              propertie.address ?? 'Endereço não encontrado',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(propertie.propertyType ?? ''),
                Text(
                  'R\$ ${propertie.askingPrice}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (propertie.bedrooms != null) Text('${propertie.bedrooms}QT'),
                if (propertie.suites != null) Text('${propertie.suites}ST'),
                if (propertie.parkingSpots != null) Text('${propertie.parkingSpots}VG'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
