import 'package:flutter/material.dart';
import 'package:pets_finder/core/helper/values_manger.dart';
import 'package:pets_finder/core/widget/image_holder.dart';
import 'package:pets_finder/features/animals/domain/entity/animals.dart';

class AnimalsCard extends StatelessWidget {
  final AnimalsData animalsData;
  const AnimalsCard({super.key, required this.animalsData});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.all(AppMargin.m8),
      elevation: 5,
      child: Row(
        children: [
          CachedImage(
            imageUrl: animalsData.smallPhoto,
          ),
        ],
      ),
    );
  }
}
