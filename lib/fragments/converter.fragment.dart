import 'package:flutter/material.dart';

import '../themes/converter.theme.dart';
import 'inputTextField.fragment.dart';

class ConverterFragment extends StatefulWidget {
  const ConverterFragment({super.key, required this.data});

  final Map data;

  @override
  State<ConverterFragment> createState() => _ConverterFragmentState();
}

class _ConverterFragmentState extends State<ConverterFragment> {
  final double defaultHeightSpace = 20.0;

  @override
  Widget build(BuildContext context) {
    final double eur = widget.data['EUR']['buy'];
    final double usd = widget.data['USD']['buy'];
    final double btc = widget.data['BTC']['buy'];

    final TextEditingController realController = TextEditingController();
    final TextEditingController eurController = TextEditingController();
    final TextEditingController usdController = TextEditingController();
    final TextEditingController btcController = TextEditingController();

    _onReal(double value) {
      eurController.text = value == 0 ? '' : (value / eur).toStringAsFixed(2);
      usdController.text = value == 0 ? '' : (value / usd).toStringAsFixed(2);
      btcController.text = value == 0 ? '' : (value / btc).toStringAsFixed(7);
    }

    _onDolar(double value) {
      realController.text = value == 0 ? '' : (value * usd).toStringAsFixed(2);
      eurController.text = value == 0 ? '' : (value * usd / eur).toStringAsFixed(2);
      btcController.text = value == 0 ? '' : (value * usd / btc).toStringAsFixed(7);
    }

    _onEuro(double value) {
      realController.text = value == 0 ? '' : (value * eur).toStringAsFixed(2);
      usdController.text = value == 0 ? '' : (value * eur / usd).toStringAsFixed(2);
      btcController.text = value == 0 ? '' : (value * eur / btc).toStringAsFixed(7);
    }

    _onBtc(double value) {
      realController.text = value == 0 ? '' : (value * btc).toStringAsFixed(2);
      usdController.text = value == 0 ? '' : (value * btc / usd).toStringAsFixed(2);
      eurController.text = value == 0 ? '' : (value * btc / eur).toStringAsFixed(7);
    }

    return Theme(
      data: ConverterTheme.getTheme(),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  const Icon(
                    Icons.monetization_on,
                    color: Colors.yellowAccent,
                    size: 200,
                  ),
                  const Text(
                    '\$ Conversor de moedas \$',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.yellowAccent,
                    ),
                  ),
                  SizedBox(height: defaultHeightSpace),
                  buildTextField('Real', 'R\$ ', realController, _onReal),
                  SizedBox(height: defaultHeightSpace),
                  buildTextField('Dólar', '\$ ', usdController, _onDolar),
                  SizedBox(height: defaultHeightSpace),
                  buildTextField('Euro', '€ ', eurController, _onEuro),
                  SizedBox(height: defaultHeightSpace),
                  buildTextField('Bitcoin', '₿ ', btcController, _onBtc),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
