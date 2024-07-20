import 'package:equatable/equatable.dart';

class NextEntity extends Equatable {
  const NextEntity({
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
