import 'package:equatable/equatable.dart';

class TextObjectEntity extends Equatable {
  const TextObjectEntity({
    required this.type,
    required this.language,
    required this.text,
  });

  final String type;
  final String language;
  final String text;

  @override
  List<Object?> get props => [
        type,
        language,
        text,
      ];
}
