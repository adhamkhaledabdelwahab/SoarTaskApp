import 'package:equatable/equatable.dart';

class ComicResourceItemEntity extends Equatable {
  const ComicResourceItemEntity({
    required this.resourceUri,
    required this.name,
  });

  final String resourceUri;
  final String name;

  @override
  List<Object> get props => [
        resourceUri,
        name,
      ];
}
