abstract class EndPoints {
  /// Base Url
  static const String developmentBaseUrl = "https://gateway.marvel.com:443/";
  static const String productionBaseUrl = "https://gateway.marvel.com:443/";
  static const String _path = "v1/public/";
  static const String apikey = "a676e1a3561073864ce085455e14dcb2";

  /// Auth EndPoints
  static const String epGetCharacters = "${_path}characters";
  static const String epGetCharacterComics =
      "${_path}characters/{characterId}/comics";
  static const String epGetCharacterById = "${_path}characters/{characterId}";
  static const String epGetCharacterEvents =
      "${_path}characters/{characterId}/events";
  static const String epGetCharacterSeries =
      "${_path}characters/{characterId}/series";
  static const String epGetCharacterStories =
      "${_path}characters/{characterId}/stories";
}
