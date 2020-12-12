part of 'return_cubit.dart';

@freezed
abstract class ReturnState with _$ReturnState {
  const factory ReturnState.initial() = _Initial;
  const factory ReturnState.returning() = _Returning;
  const factory ReturnState.success() = _Success;
  const factory ReturnState.failure({String message}) = _Failure;
}
