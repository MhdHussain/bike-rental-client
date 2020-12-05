
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure<T> with _$Failure<T>{

  const factory Failure.requestTimeOut({@required String message}) =
      RequestTimeOut<T>;

  // auth failures
  const factory Failure.wrongAuthCredintials({@required String message}) =
      WrongAuthCredintials<T>;

  const factory Failure.userDisabled({@required String message}) =
      UserDisabled<T>;
  
  const factory Failure.locationError({@required String message}) =
      LocationError<T>;

  const factory Failure.locationServiceDisabled({@required String message}) =
      LocationServiceDisabled<T>;
}