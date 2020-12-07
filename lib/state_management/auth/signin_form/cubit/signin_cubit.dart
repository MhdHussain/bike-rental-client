import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bikes_rental_client/repositories/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

part 'signin_cubit.freezed.dart';
part 'signin_state.dart';

@injectable
class SigninCubit extends Cubit<SigninState> {
  final IAuthRepository _repository;
  SigninCubit(
    this._repository,
  ) : super(SigninState.initial());

  Future<void> login(String email, String password) async {
    emit(SigninState.signingIn());

    final successOrFailure = await _repository.login(email, password);
    print("cubit email is " + email);
    successOrFailure.fold(
        (failure) => emit(SigninState.failed(message: failure.message)),
        (success) => emit(SigninState.success()));
  }
}
