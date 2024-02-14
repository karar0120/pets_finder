import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_finder/core/di/dependency_injection.dart';
import 'package:pets_finder/core/helper/constances.dart';
import 'package:pets_finder/core/routing/routes.dart';
import 'package:pets_finder/features/animals/presentation/controller/cubit/animals_cubit.dart';
import 'package:pets_finder/features/animals/presentation/ui/screens/animals_screens.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.animalsScreen:
        initAnimalsModule();
        return MaterialPageRoute(
            builder: (context) => BlocProvider<AnimalsCubit>(
                  create: (context) => getIt<AnimalsCubit>()..refreshData(),
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
                title: const Text(Constances.noRouteFound),
              ),
              body: const Center(child: Text(Constances.noRouteFound)),
            ));
  }
}
