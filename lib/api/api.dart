import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
class CallApi{
final String _url="http://localhost/php_corse/log%20in/api/";
postData(data,api_url)async{
  var fullUrl=_url+api_url;
  return await http.post(
    Uri.parse(fullUrl),
    body: jsonEncode(data),
    headers: _setHeaders(),
  );
}
_setHeaders()=>{
  'Content-type':'application/json',
  'Accept':'application/json',
};
}