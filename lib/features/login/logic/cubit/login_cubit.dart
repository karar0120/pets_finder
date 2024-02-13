import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_clinic/features/login/data/models/login_request_body.dart';
import 'package:online_clinic/features/login/data/repos/login_repo.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final TextEditingController emailTextEditingController =
      TextEditingController();

  final TextEditingController passwordTextEditingController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(
      LoginRequestBody(
          email: emailTextEditingController.text,
          password: passwordTextEditingController.text),
    );
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? " "));
    });
  }
}
