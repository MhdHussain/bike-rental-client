part of 'signup_cubit.dart';

@freezed
abstract class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.signingUp() = _SigningUp;
  const factory SignupState.success() = _Success;
  const factory SignupState.failed({String message}) = _Failed;
}
