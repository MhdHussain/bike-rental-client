import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:bikes_rental_client/models/rental/rental.dart';
import 'package:bikes_rental_client/repositories/i_bike_repository.dart';

part 'rental_list_cubit.freezed.dart';
part 'rental_list_state.dart';

@injectable
class RentalListCubit extends Cubit<RentalListState> {
  final IBikeRepository _repository;
  RentalListCubit(
    this._repository,
  ) : super(RentalListState.initial());

  Future<void> getRentedBikes() async {
    emit(RentalListState.loading());

    final listOrFailure = await _repository.getRentedBikes();

    listOrFailure
        .fold((error) => emit(RentalListState.failure(message: error.message)),
            (rentals) {
      if (rentals.length > 0) {
        emit(RentalListState.loaded(rentals: rentals));
      } else {
        emit(RentalListState.noData());
      }
    });
  }
}
