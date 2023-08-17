import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Temprature extends StatefulWidget {
  const Temprature({super.key});

  @override
  State<Temprature> createState() => _TempratureState();
}

String ctf = 'celcious to fan';
final myController = TextEditingController();

class _TempratureState extends State<Temprature> {
  late double input;
  late double output;
  late bool fOrC;
  @override
  void initState() {
    super.initState();
    input = 0.0;
    output = 0.0;
    fOrC = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE2E8F0),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Temperature",
            style: TextStyle(
                color: Color(0xFF1E1B4B),
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              width: 500,
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (str) {
                  try {
                    input = double.parse(str);
                  } catch (e) {
                    input = 0.0;
                  }
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText:
                      "Input a Value in ${fOrC == false ? "Fahrenheit" : "Celsius"}",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("F"),
                  Radio<bool>(
                      groupValue: fOrC,
                      value: false,
                      onChanged: (v) {
                        setState(() {
                          fOrC = v!;
                        });
                      }),
                  const Text("C"),
                  Radio<bool>(
                      groupValue: fOrC,
                      value: true,
                      onChanged: (v) {
                        setState(() {
                          fOrC = v!;
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  setState(() {
                    fOrC == false
                        ? output = (input - 32) * (5 / 9)
                        : output = (input * 9 / 5) + 32;
                  });
                  AlertDialog dialog = AlertDialog(
                    content: fOrC == false
                        ? Text(
                            "${input.toStringAsFixed(2)} F : ${output.toStringAsFixed(2)} C")
                        : Text(
                            "${input.toStringAsFixed(2)} C : ${output.toStringAsFixed(2)} F"),
                  );
                  showDialog(builder: (context) => dialog, context: context);
                },
                icon: Icon(Icons.add),
                label: Text('Convert'),
              ),
            ],
          ),
        ])));
  }
}
