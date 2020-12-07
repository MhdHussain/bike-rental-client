import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:bikes_rental_client/repositories/i_auth_repository.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {

  final IAuthRepository _repository;

  AuthCubit(
    this._repository,
  ) : super(AuthState.initial());


  Future<void> getAuthStatus() async {
    var loggedIn = await _repository.isLoggedIn();

    
      if (loggedIn) {
        emit(AuthState.authenticated());
      } else {
        emit(AuthState.unAuthenticated());
      }
    
  }
}
