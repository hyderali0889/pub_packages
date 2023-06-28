library internet_connectivity_check;


import 'package:http/http.dart' as http;

Future<bool> checkInternetStatus() async {
  try {
    var client = http.Client();

    http.Response data = await client
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));

    if (data.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}
