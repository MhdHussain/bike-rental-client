part of 'rental_list_cubit.dart';

@freezed
abstract class RentalListState with _$RentalListState {
  const factory RentalListState.initial() = _Initial;
  const factory RentalListState.loading() = _Loading;
  const factory RentalListState.loaded({List<Rental> rentals}) = _Loaded;
  const factory RentalListState.noData() = _Nodata;
  const factory RentalListState.failure({String message}) = _Failure;
}
