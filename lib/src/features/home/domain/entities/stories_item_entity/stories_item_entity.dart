import 'package:equatable/equatable.dart';

class StoriesItemEntity extends Equatable {
  const StoriesItemEntity({
    required this.resourceUri,
    required this.name,
    required this.type,
  });

  final String resourceUri;
  final String name;
  final String type;

  @override
  List<Object?> get props => [
        resourceUri,
        name,
        type,
      ];
}
