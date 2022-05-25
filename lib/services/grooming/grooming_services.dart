import 'package:http/http.dart' as http;

class GroomingServices {
  Future<String> getUserData() async {
    var url = Uri.parse('http://172.20.18.195:3333/client/dropdown');
    var header = {
      "Content-type": "application/json",
      "Authorization":
          "Bearer eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTUwLCJldnNHdWVzdCI6ZmFsc2UsImlhdCI6MTY1MjQ3MTM3OCwiZXhwIjoxNjg0MDI4OTc4LCJhdWQiOiJBVE0gU0lBIEFQSSBDbGllbnQiLCJpc3MiOiJBVE0gU0lBIEFQSSBTZXJ2ZXIifQ.j42PgWGK6eDlE-EibdO3PdWL1ZDfCwkwrazhhllN3tBb-yPDH1sVcUZyi20XRWNzWMOCVu38ZmMxnHkWxMP2ZR2P5Cr1n854TTeXalGOSS5voL391Tz8zFNG8EsKJNGw6wokK4rLeuZesVvkDC59PckXAP-2MoC36dvqwSZT1Es"
    };
    var response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      //print(response.body.toString());
      return 'response = 200';
    } else {
      return 'response = ${response.statusCode}';
      //(response.statusCode.toString());
    }
  }
}
