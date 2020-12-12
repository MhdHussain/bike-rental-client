part of 'rent_cubit.dart';

@freezed
abstract class RentState with _$RentState {
  const factory RentState.initial() = _Initial;
  const factory RentState.renting() = _Renting;
  const factory RentState.success({Bike bike}) = _Success;
  const factory RentState.failure({String message}) = _Failure;
}
