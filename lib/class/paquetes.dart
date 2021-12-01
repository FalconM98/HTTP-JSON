import 'package:http/http.dart' as http;
import 'package:paquetes/class/request.dart';

void getRequest() {
  final url = Uri.parse("https://reqres.in/api/users?page=2");
  http.get(url).then((res) {
    final requestJson = Request.fromJson(res.body);

    print('page: ${requestJson.page}');
    print('per_page: ${requestJson.perPage}');
    print('id del tercer elemento: ${requestJson.data[2].id}');
  });
}
