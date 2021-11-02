import 'dart:convert' as convert;
import 'package:http/http.dart' as http;



Future getCategory() async {
  var url = 'http://10.0.2.2/storeapi/categories.php';
  var response = await http.get(url);
  var responseBody = convert.jsonDecode(response.body);
  return responseBody;
}

Future getProducts() async {
  var url = 'http://10.0.2.2/storeapi/Products.php';
  var response = await http.get(url);
  var responseBody = convert.jsonDecode(response.body);
  return responseBody;
}
