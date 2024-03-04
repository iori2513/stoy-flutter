import 'package:freezed_annotation/freezed_annotation.dart';

part 'body.freezed.dart';

@freezed
class Body with _$Body {
  const factory Body({
    required String docId,
    required String userId,
    required double weight,
    required double fatPercentage,
    required double bodyTemp,
    required String ymd,
    @Default('') String memo,
  }) = _Body;

  factory Body.empty({required String userId, required DateTime date}) => Body(
        docId: '',
        userId: userId,
        weight: 0,
        fatPercentage: 0,
        bodyTemp: 0,
        ymd: '${date.year}-${date.month}-${date.day}',
        memo: '',
      );
}
