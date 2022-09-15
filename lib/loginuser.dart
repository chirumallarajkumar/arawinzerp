import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<Album> fetchAlbum() async {
  String get_api = "http://192.168.29.234:5335/get";

  http.Response response = await http.get(Uri.parse(get_api));
  print("respinse>>" + response.statusCode.toString());
  print("respinse>>" + response.body.toString());
  final responseJson = jsonDecode(response.body);
  return Album.fromJson(responseJson);
}

class Album {
  final int? id;
  final String? password;

  const Album({
    required this.id,
    required this.password,
  });

  factory Album.fromJson(Map<String?, dynamic?> json) {
    return Album(
      id: json['id'],
      password: json['title'],
    );
  }
}
