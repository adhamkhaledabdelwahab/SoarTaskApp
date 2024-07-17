import 'package:soar_task_app/src/core/network/endpoints.dart';

import 'base_configurations.dart';

class ProductionConfigurations implements BaseConfigurations {
  @override
  String get baseUrl => EndPoints.productionBaseUrl;
}
