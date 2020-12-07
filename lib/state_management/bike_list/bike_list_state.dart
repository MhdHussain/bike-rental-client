part of 'bike_list_cubit.dart';

@freezed
abstract class BikeListState with _$BikeListState {
  const factory BikeListState.initial() = _Initial;
  const factory BikeListState.loading() = _Loading;
  const factory BikeListState.loaded({List<Bike> bikes}) = _Loaded;
  const factory BikeListState.noData() = _NoData;
  const factory BikeListState.failure({String message}) = _Failure;
}
