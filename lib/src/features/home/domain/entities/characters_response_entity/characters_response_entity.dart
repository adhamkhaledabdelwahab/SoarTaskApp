import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/characters_response_data_entity/characters_response_data_entity.dart';

class CharactersResponseEntity extends Equatable {
  const CharactersResponseEntity({
    required this.code,
    required this.status,
    required this.copyright,
    required this.attributionText,
    required this.attributionHtml,
    required this.etag,
    required this.data,
  });

  final num code;
  final String status;
  final String copyright;
  final String attributionText;
  final String attributionHtml;
  final String etag;
  final CharacterResponseDataEntity data;

  @override
  List<Object?> get props => [
        code,
        status,
        copyright,
        attributionText,
        attributionHtml,
        etag,
        data,
      ];
}
