import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_finder/core/di/dependency_injection.dart';
import 'package:pets_finder/core/helper/strings_manger.dart';
import 'package:pets_finder/core/routing/routes.dart';
import 'package:pets_finder/features/animals/presentation/controller/cubit/animals_cubit.dart';
import 'package:pets_finder/features/animals/presentation/ui/screens/animals.dart';
import 'package:pets_finder/features/login/logic/cubit/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider<LoginCubit>(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.animalsScreen:
        initAnimalsModule();
        return MaterialPageRoute(
            builder: (context) => BlocProvider<AnimalsCubit>(
                  create: (context) =>
                      getIt<AnimalsCubit>()..emitGetAnimalsState(),
                  child: const AnimalsScreen(),
                ));
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppString.noRouteFound),
              ),
              body: const Center(child: Text(AppString.noRouteFound)),
            ));
  }
}
