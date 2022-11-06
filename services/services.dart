import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:newsapi_assesment/services/models.dart';
import 'package:path_provider/path_provider.dart';

class Services {
  final String _BASE_URL =
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=e38da7d8fc734d36bb1b6490dea7bd0d";

  Future getservice() async {
    String fileName = "userdata.json";

    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);
    if (file.existsSync()) {
      print("Loading from cache");
      var jsonData = file.readAsStringSync();
      var response = Models.fromJson(json.decode(jsonData));
      return response;
    } else {
      print("Loading from API");
      var response = await http.get(Uri.parse(_BASE_URL));

      if (response.statusCode == 200) {
        var jsonResponse = response.body;
        var res = Models.fromJson(json.decode(jsonResponse));
        //save json in local file
        file.writeAsStringSync(jsonResponse, flush: true, mode: FileMode.write);

        return res;
      }
    }
  }
}
