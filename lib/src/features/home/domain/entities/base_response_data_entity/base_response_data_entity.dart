import 'package:equatable/equatable.dart';

class BaseResponseDataEntity<T> extends Equatable {
  const BaseResponseDataEntity({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
    required this.characterId,
  });

  final num offset;
  final num limit;
  final num total;
  final num count;
  final List<T> results;
  final num? characterId;

  @override
  List<Object?> get props => [
        offset,
        limit,
        total,
        count,
        results,
        characterId,
      ];

  BaseResponseDataEntity<T> copyWith({
    num? offset,
    num? limit,
    num? total,
    num? count,
    List<T>? results,
    num? characterId,
  }) {
    return BaseResponseDataEntity<T>(
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
      total: total ?? this.total,
      count: count ?? this.count,
      results: results ?? this.results,
      characterId: characterId ?? this.characterId,
    );
  }
}
