import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

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
        ymd: DateFormat('yyyy-MM-dd').format(date),
        memo: '',
      );

  static Body fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    var data = snapshot.data();
    return Body(
      docId: snapshot.id,
      userId: data?['userId'] as String,
      weight: data?['weight'] as double,
      fatPercentage: data?['fatPercentage'] as double,
      bodyTemp: data?['bodyTemp'] as double,
      ymd: data?['ymd'] as String,
      memo: data?['memo'] as String,
    );
  }
}

extension BodyExtension on Body {
  Map<String, dynamic> toFirestore() {
    return {
      'userId': userId,
      'weight': weight,
      'fatPercentage': fatPercentage,
      'bodyTemp': bodyTemp,
      'ymd': ymd,
      'memo': memo,
    };
  }
}
