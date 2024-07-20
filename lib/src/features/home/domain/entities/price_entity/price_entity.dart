import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';

part 'price_entity.g.dart';

@HiveType(typeId: HiveIds.priceEntityId)
class PriceEntity extends Equatable {
  const PriceEntity({
    required this.type,
    required this.price,
  });

  @HiveField(0)
  final String type;
  @HiveField(1)
  final num price;

  @override
  List<Object> get props => [
        type,
        price,
      ];
}
