import 'package:equatable/equatable.dart';

class SeriesResourceEntity extends Equatable {
  const SeriesResourceEntity({
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
