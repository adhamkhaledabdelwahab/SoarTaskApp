import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/price_entity/price_entity.dart';

part 'price_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class PriceModel extends Equatable {
  const PriceModel({
    required this.type,
    required this.price,
  });

  final String? type;
  static const String typeKey = "type";

  final num? price;
  static const String priceKey = "price";

  factory PriceModel.fromJson(Map<String, dynamic> json) =>
      _$PriceModelFromJson(json);

  PriceEntity get toEntity => PriceEntity(
        type: type ?? "",
        price: price ?? 0,
      );

  @override
  List<Object?> get props => [
        type,
        price,
      ];
}
