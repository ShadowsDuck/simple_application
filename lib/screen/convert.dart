import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_application/Currency.dart';

class Convert extends StatefulWidget {
  const Convert({super.key});

  @override
  State<Convert> createState() => _ConvertState();
}

class _ConvertState extends State<Convert> {
  @override
  void initState() {
    super.initState();
    Future<Currency> result = getCurrency();
  }

  Future<Currency> getCurrency() async {
    var url = "currency-converter-pro1.p.rapidapi.com";

    var uri = Uri.https(url, '/currencies');

    var response = await http.get(uri, headers: <String, String>{
      'X-RapidAPI-Key': 'f11f61067emsh5f401d02140b60bp120d2ajsnf79c9b4c907d',
      'X-RapidAPI-Host': 'currency-converter-pro1.p.rapidapi.com'
    });

    Currency currency = currencyFromJson(response.body);
    return currency;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getCurrency(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Text("Finished Load Data");
          }
          return CircularProgressIndicator();
        });
  }
}
