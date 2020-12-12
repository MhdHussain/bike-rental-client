import 'package:bikes_rental_client/models/rental/rental.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:bikes_rental_client/repositories/i_bike_repository.dart';

part 'return_cubit.freezed.dart';
part 'return_state.dart';

@injectable
class ReturnCubit extends Cubit<ReturnState> {
  final IBikeRepository _repository;
  ReturnCubit(
    this._repository,
  ) : super(ReturnState.initial());

  Future<void> returnBike({Rental rental}) async {
    emit(ReturnState.returning());

    final returnedOrFailed = await _repository.returnBike(rental);

    returnedOrFailed.fold(
      (failed) => emit(ReturnState.failure(message: failed.message)),
      (success) => emit(ReturnState.success()));
  }
}
