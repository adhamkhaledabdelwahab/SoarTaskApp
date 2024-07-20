import 'package:equatable/equatable.dart';

class StoryResourceItemEntity extends Equatable {
  const StoryResourceItemEntity({
    required this.resourceUri,
    required this.name,
    required this.type,
  });

  final String resourceUri;
  final String name;
  final String type;

  @override
  List<Object> get props => [
        resourceUri,
        name,
        type,
      ];
}
