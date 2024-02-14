import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets_finder/core/helper/spacing.dart';
import 'package:pets_finder/core/helper/strings_manger.dart';
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
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppPadding.p16.h, horizontal: AppPadding.p16.w),
        child: Row(
          children: [
            CachedImage(
              imageUrl: animalsData.smallPhoto,
            ),
            horizontalSpace(AppSize.s16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(AppString.name),
                      horizontalSpace(AppSize.s8),
                      Expanded(child: Text(animalsData.name))
                    ],
                  ),
                  verticalSpace(AppSize.s12),
                  Row(
                    children: [
                      const Text(AppString.gender),
                      horizontalSpace(AppSize.s8),
                      Expanded(child: Text(animalsData.gender))
                    ],
                  ),
                  verticalSpace(AppSize.s12),
                  Row(
                    children: [
                      const Text(AppString.type),
                      horizontalSpace(AppSize.s8),
                      Expanded(child: Text(animalsData.type))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
