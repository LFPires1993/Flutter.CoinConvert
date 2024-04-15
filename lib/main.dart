import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppHome(),
  ));
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    const double defaultHeight = 20.0;
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.monetization_on,
                    color: Colors.yellowAccent,
                    size: 200,
                  ),
                  Text(
                    'Conversor de moedas!',
                    style: TextStyle(fontSize: 30, color: Colors.yellowAccent),
                  ),
                  SizedBox(height: defaultHeight),
                  TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.yellowAccent,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.yellowAccent,
                          )
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellowAccent,
                        )
                      ),
                      labelText: 'Real',
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.yellowAccent
                      ),
                      prefixText: 'R\$ ',
                      prefixStyle: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 20
                      )
                    ),
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 25
                    ),
                  ),
                  SizedBox(height: defaultHeight),
                  TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.yellowAccent,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.yellowAccent,
                            )
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.yellowAccent,
                            )
                        ),
                        labelText: 'Dolar',
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.yellowAccent
                        ),
                        prefixText: '\$ ',
                        prefixStyle: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 20
                        )
                    ),
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 25
                    ),
                  ),
                  SizedBox(height: defaultHeight),
                  TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.yellowAccent,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.yellowAccent,
                            )
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.yellowAccent,
                            )
                        ),
                        labelText: 'Euro',
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.yellowAccent
                        ),
                        prefixText: '€ ',
                        prefixStyle: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 20
                        )
                    ),
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 25
                    ),
                  ),
                  SizedBox(height: defaultHeight),
                  TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.yellowAccent,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.yellowAccent,
                            )
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.yellowAccent,
                            )
                        ),
                        labelText: 'Bitcoin',
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.yellowAccent
                        ),
                        prefixText: '₿ ',
                        prefixStyle: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 20
                        )
                    ),
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 25
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
