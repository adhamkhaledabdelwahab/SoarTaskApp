import 'package:equatable/equatable.dart';

class UrlEntity extends Equatable {
  const UrlEntity({
    required this.type,
    required this.url,
  });

  final String type;
  final String url;

  @override
  List<Object?> get props => [
        type,
        url,
      ];
}
