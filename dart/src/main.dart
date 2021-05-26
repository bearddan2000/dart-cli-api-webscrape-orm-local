import 'dart:convert';
import 'package:http/http.dart' as http;

class Greeting {
  String message;

  Greeting({
    this.message,
  });

  Greeting.fromJson(Map json){ this.message = json['message']; }

  @override
  String toString() => '[OUTPUT] Greeting: $message';
}

Future<Greeting> fetch() async {
  http.Response response =
      await http.get(Uri.parse('http://node-srv:8000/'));
  if (response.statusCode == 200) {
    var obj = Greeting.fromJson(jsonDecode(response.body));
    print(obj.toString());
  } else {
    print("[ERROR] Can't connect to remote server.");
  }
}

main(){
  fetch();
}
