import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'fragments/converter.fragment.dart';

const String url = 'https://api.hgbrasil.com/finance?key=94520e03';
final client = http.Client();

Future<Map> getData() async {
  http.Response response = await client.get(Uri.parse(url));
  return convert.jsonDecode(response.body)['results']['currencies'];
}

main() async {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppHome(),
  ));
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder<Map>(
        future: getData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(
                  strokeAlign: 10,
                  strokeWidth: 15,
                  strokeCap: StrokeCap.round,
                  color: Colors.yellowAccent,
                ),
              );
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    'Erro ao carregar dados: ${snapshot.error}',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.yellowAccent,
                    ),
                  ),
                );
              } else {
                return ConverterFragment(data: snapshot.data!);
              }
          }
        },
      ),
    );
  }
}
