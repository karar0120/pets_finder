import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_finder/core/helper/extensions.dart';
import 'package:pets_finder/core/theming/color.dart';
import 'package:pets_finder/core/widget/app_text_button.dart';
import 'package:pets_finder/features/animals/presentation/controller/cubit/animals_cubit.dart';
import 'package:pets_finder/features/login/ui/widget/login_bloc_listener.dart';

class AnimalsScreen extends StatelessWidget {
  const AnimalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AnimalsCubit, AnimalsState>(
        listener: (context, state) {
          state.whenOrNull(loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          }, success: (loginResponse) {
            context.pop();
          }, error: (error) {
            setupErrorState(context, error);
          });
        },
        builder: (context, state) {
          return Center(
              child: AppTextButton(
            buttonText: 'test',
            onPressed: () {
              // context.read<AnimalsCubit>().emitGetAnimalsState();
            },
            textStyle: const TextStyle(),
          ));
        },
      ),
    );
  }
}
