
import 'dart:convert';
import 'package:http/http.dart' as http;

PostRequest(formValues)async{
  var url = Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var postBody = json.encode(formValues);
  var headers ={"Content-Type":"application/json"};

  var response = await http.post(url, headers: headers, body:postBody);
}