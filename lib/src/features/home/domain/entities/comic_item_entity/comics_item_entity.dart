import 'package:equatable/equatable.dart';

class ComicsItemEntity extends Equatable {
  const ComicsItemEntity({
    required this.resourceUri,
    required this.name,
  });

  final String resourceUri;
  final String name;

  @override
  List<Object?> get props => [
        resourceUri,
        name,
      ];
}
