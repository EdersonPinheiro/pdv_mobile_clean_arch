import 'package:http/http.dart' as http;

class ApiClient {
  static const String baseUrl = 'https://parseapi.back4app.com/parse/functions';
  static const Map<String, String> headers = {
    'X-Parse-Application-Id': 'lBYPRb4VMe0YtUkaqBfNwUnqijT8QIE8MIxLNb3x',
    'X-Parse-REST-API-Key': 'D8lXCcjSpU6lsyprvoKg2PnYoFbp229gFskyaxY5',
    'X-Parse-Session-Token': 'r:feb287630fb367d5328689b60670eae9',
  };
}
