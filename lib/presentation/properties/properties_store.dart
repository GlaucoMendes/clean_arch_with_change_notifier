import 'package:flutter/cupertino.dart';
import 'package:pilar_mobile_case/data/models/properties_model.dart';
import 'package:pilar_mobile_case/domain/usecases/get_properties_usercase.dart';
import 'package:pilar_mobile_case/infra/enums/order_by_enum.dart';
import 'package:pilar_mobile_case/infra/utils/app_utils.dart';
import 'package:pilar_mobile_case/presentation/properties/properties_states.dart';

class PropertiesStore extends ValueNotifier<PropertiesState> {
  final GetPropertiesUsecase getPropertiesUsecase;
  List<PropertiesModel> properties = [];
  PropertiesStore(
    this.getPropertiesUsecase,
  ) : super(InitialPropertiesState());

  fetchProperties() async {
    value = LoadingPropertiesState();
    try {
      properties = await getPropertiesUsecase();
      value = SuccessPropertiesState(properties);
    } catch (e) {
      value = ErrorPropertiesState(e.toString());
    }
  }

  search(String text) {
    if (text.isNotEmpty) {
      var result = properties.where((element) {
        bool addressResult = false;
        bool cityResult = false;
        bool buildingResult = false;

        if (element.address != null) {
          addressResult = AppUtils.formatToSearch(element.address!).contains(AppUtils.formatToSearch(text));
        }
        if (element.city != null) {
          cityResult = AppUtils.formatToSearch(element.city!).contains(AppUtils.formatToSearch(text));
        }
        if (element.building != null) {
          buildingResult = AppUtils.formatToSearch(element.building!).contains(AppUtils.formatToSearch(text));
        }
        if (addressResult == true || cityResult == true || buildingResult == true) return true;
        return false;
      }).toList();
      value = SuccessPropertiesState(result);
    } else {
      value = SuccessPropertiesState(properties);
    }
  }

  orderBy(OrderBy order) {
    List<PropertiesModel> propertiesSort = [...properties];
    switch (order) {
      case OrderBy.lowestPrice:
        propertiesSort.sort((a, b) => a.askingPrice!.compareTo(b.askingPrice!));
        value = SuccessPropertiesState(propertiesSort);
        break;
      case OrderBy.biggestPrice:
        propertiesSort.sort((a, b) => a.askingPrice!.compareTo(b.askingPrice!));
        value = SuccessPropertiesState(propertiesSort.reversed.toList());
        break;

      default:
        value = SuccessPropertiesState(properties);
    }
  }
}
