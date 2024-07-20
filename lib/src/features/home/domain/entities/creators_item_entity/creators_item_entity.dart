import 'package:equatable/equatable.dart';

class CreatorsItemEntity extends Equatable {
  const CreatorsItemEntity({
    required this.resourceUri,
    required this.name,
    required this.role,
  });

  final String resourceUri;
  final String name;
  final String role;

  @override
  List<Object> get props => [
        resourceUri,
        name,
        role,
      ];
}
