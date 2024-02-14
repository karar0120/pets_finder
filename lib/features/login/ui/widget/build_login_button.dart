import 'package:flutter/material.dart';
import 'package:pets_finder/core/helper/extensions.dart';
import 'package:pets_finder/core/routing/routes.dart';
import 'package:pets_finder/core/theming/styles.dart';
import 'package:pets_finder/core/widget/app_text_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      textStyle: TextStyles.font16WhiteSemiBold,
      onPressed: () {
        validateThenDoLogin(context);
      },
      buttonText: "Login",
    );
  }

  void validateThenDoLogin(BuildContext context) {
    //if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    // context.read<LoginCubit>().emitLoginState();
    //}
    context.pushReplacementNamed(Routes.animalsScreen);
  }
}
