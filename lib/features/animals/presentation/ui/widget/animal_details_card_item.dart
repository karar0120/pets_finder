import 'package:flutter/material.dart';
import 'package:pets_finder/core/helper/spacing.dart';
import 'package:pets_finder/core/helper/strings_manger.dart';
import 'package:pets_finder/core/helper/values_manger.dart';
import 'package:pets_finder/features/animals/domain/entity/details_animal.dart';

class AnimalDetailsCardItem extends StatelessWidget {
  final String title;
  final String value;
  const AnimalDetailsCardItem(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
        ),
        horizontalSpace(AppSize.s20),
        // const Spacer(),
        Text(value)
      ],
    );
  }
}

class AnimalDetailsAddressCardItem extends StatelessWidget {
  final AddressDetails addressDetails;
  const AnimalDetailsAddressCardItem({super.key, required this.addressDetails});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          AppString.address,
        ),
        horizontalSpace(AppSize.s20),
        //  const Spacer(),
        Row(
          children: [
            Text(addressDetails.city.isEmpty
                ? AppString.nullValue
                : addressDetails.city),
            horizontalSpace(AppSize.s5),
            const Text("/"),
            horizontalSpace(AppSize.s5),
            Text(addressDetails.state.isEmpty
                ? AppString.nullValue
                : addressDetails.state),
            horizontalSpace(AppSize.s5),
            const Text("/"),
            horizontalSpace(AppSize.s5),
            Text(addressDetails.country.isEmpty
                ? AppString.nullValue
                : addressDetails.country)
          ],
        )
      ],
    );
  }
}
