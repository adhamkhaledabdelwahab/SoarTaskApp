import 'package:soar_task_app/src/core/constants/app_string_constants.dart';
import 'package:soar_task_app/src/core/environment/production_configurations.dart';

import 'base_configurations.dart';
import 'development_configurations.dart';

class EnvironmentsVariables {
  static EnvironmentsVariables instance = EnvironmentsVariables._instance();

  EnvironmentsVariables._internal();

  factory EnvironmentsVariables._instance() =>
      EnvironmentsVariables._internal();

  static const String development = AppStringConstants.development;
  static const String production = AppStringConstants.production;

  late BaseConfigurations configurations;

  void initConfig(String environment) {
    configurations = _getConfig(environment);
  }

  BaseConfigurations _getConfig(String environment) {
    switch (environment) {
      case EnvironmentsVariables.production:
        return ProductionConfigurations();
      default:
        return DevelopmentConfigurations();
    }
  }
}
