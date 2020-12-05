import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bikes_rental_client/repositories/i_bike_repository.dart';
import 'package:injectable/injectable.dart';

part 'bike_list_cubit.freezed.dart';
part 'bike_list_state.dart';

@injectable
class BikeListCubit extends Cubit<BikeListState> {
  final IBikeRepository _repository;
  BikeListCubit(
    this._repository,
  ) : super(BikeListState.initial());

  Future<void> loadBikes() async {
    // instruct the viwe to show progress indicator while reequesting a list
    // of nearby bikes
    emit(_Loading());

    final bikeListOrFailure = await _repository.getNearbyBikes();

    bikeListOrFailure
        .fold((failure) => emit(_Failure(message: failure.message)), (bikes) {
      if (bikes.length > 0) {
        emit(_Loaded(bikes: bikes));
      } else {
        emit(_NoData());
      }
    });
  }
}
