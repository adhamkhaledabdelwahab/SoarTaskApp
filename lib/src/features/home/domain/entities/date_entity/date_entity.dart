import 'package:equatable/equatable.dart';

class DateEntity extends Equatable {
  const DateEntity({
    required this.type,
    required this.date,
  });

  final String type;
  final String date;

  @override
  List<Object?> get props => [
        type,
        date,
      ];
}
