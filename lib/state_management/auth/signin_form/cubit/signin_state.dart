part of 'signin_cubit.dart';

@freezed
abstract class SigninState with _$SigninState {
  const factory SigninState.initial() = _Initial;
  const factory SigninState.signingIn() = _SigningIn;
  const factory SigninState.success() = _Success;
  const factory SigninState.failed({String message}) = _Failed;
}
