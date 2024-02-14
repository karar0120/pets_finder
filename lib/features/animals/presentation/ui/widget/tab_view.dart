import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets_finder/core/helper/constances.dart';
import 'package:pets_finder/core/helper/values_manger.dart';
import 'package:pets_finder/features/animals/presentation/controller/cubit/animals_cubit.dart';

class TapBarViews extends StatelessWidget {
  const TapBarViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: AppSize.s50.h,
        child: ListView.builder(
            itemCount: Constances.tabBarFilter.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(AppPadding.p6),
                  child: GestureDetector(
                    onTap: () {
                      context.read<AnimalsCubit>().setSelectedFilterAnimals(
                          Constances.tabBarFilter[index]);
                    },
                    child: Chip(
                        backgroundColor: const Color(0xFFE1E4F3),
                        padding: EdgeInsets.symmetric(
                            vertical: AppPadding.p12.h,
                            horizontal: AppPadding.p12.w),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(AppSize.s5.r),
                                bottomRight: Radius.circular(AppSize.s5.r),
                                topLeft: Radius.circular(AppSize.s5.r),
                                bottomLeft: Radius.circular(AppSize.s5.r))),
                        label: SizedBox(
                          width: AppSize.s70.w,
                          child: Text(
                            Constances.tabBarFilter[index].name,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3649AE)),
                          ),
                        )),
                  ),
                )),
      )
    ]);
  }
}
