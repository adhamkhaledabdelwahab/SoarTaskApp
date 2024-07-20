import 'package:equatable/equatable.dart';

class PriceEntity extends Equatable {
  const PriceEntity({
    required this.type,
    required this.price,
  });

  final String type;
  final num price;

  @override
  List<Object> get props => [
        type,
        price,
      ];
}
