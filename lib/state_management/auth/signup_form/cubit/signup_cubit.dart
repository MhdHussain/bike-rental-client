import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bikes_rental_client/repositories/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

part 'signup_cubit.freezed.dart';
part 'signup_state.dart';

@injectable
class SignupCubit extends Cubit<SignupState> {
  final IAuthRepository _repository;
  SignupCubit(
    this._repository,
  ) : super(SignupState.initial());

  Future<void> signup(
      {String name, String email, String password, String phoneNumber}) async {
    emit(SignupState.signingUp());
    final signupOrFailure =
        await _repository.signup(name, email, password, phoneNumber);

    signupOrFailure.fold(
        (failure) => emit(SignupState.failed(message: failure.message)),
        (success) => emit(SignupState.success()));
  }
}
