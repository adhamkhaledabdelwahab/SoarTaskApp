import 'package:equatable/equatable.dart';

class OriginalIssueEntity extends Equatable {
  const OriginalIssueEntity({
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
