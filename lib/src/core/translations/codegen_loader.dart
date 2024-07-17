import 'package:easy_localization/easy_localization.dart' show AssetLoader;
import 'package:flutter/material.dart';
import 'package:soar_task_app/src/core/translations/translation_maps/ar.dart';
import 'package:soar_task_app/src/core/translations/translation_maps/en.dart';

class CodeGenLoader extends AssetLoader {
  const CodeGenLoader();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": ar,
    "en": en,
  };
}
