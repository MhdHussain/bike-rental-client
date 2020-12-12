import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bikes_rental_client/repositories/i_bike_repository.dart';
import 'package:injectable/injectable.dart';

part 'rent_cubit.freezed.dart';
part 'rent_state.dart';

@injectable
class RentCubit extends Cubit<RentState> {
  IBikeRepository _repository;
  RentCubit(
    this._repository,
  ) : super(RentState.initial());

  Future<void> rentBike({Bike bike, int count, int period}) async {
    emit(RentState.renting());

    final rentedOrFailure = await _repository.rentBike(bike, count, period);

    rentedOrFailure.fold((failure) => emit(RentState.failure(message: failure.message)), 
    (_)  {
      bike = bike.copyWith(quantity : bike.quantity - count );
      emit(RentState.success(bike: bike));
    });
  }
}
