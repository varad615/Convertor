import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Speed extends StatefulWidget {
  const Speed({super.key});

  @override
  State<Speed> createState() => _SpeedState();
}

class _SpeedState extends State<Speed> {
  late double input;
  late double output;
  late bool kOrM;
  @override
  void initState() {
    super.initState();
    input = 0.0;
    output = 0.0;
    kOrM = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE2E8F0),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Speed",
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
                      "Input a Value in ${kOrM == false ? "Kilometer per hour" : "Meter per second"}",
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
                  const Text("km/h"),
                  Radio<bool>(
                      groupValue: kOrM,
                      value: false,
                      onChanged: (v) {
                        setState(() {
                          kOrM = v!;
                        });
                      }),
                  const Text("m/s"),
                  Radio<bool>(
                      groupValue: kOrM,
                      value: true,
                      onChanged: (v) {
                        setState(() {
                          kOrM = v!;
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
                    kOrM == false
                        ? output = (input / 3.6)
                        : output = (input * 3.6);
                  });
                  AlertDialog dialog = AlertDialog(
                    content: kOrM == false
                        ? Text(
                            "${input.toStringAsFixed(2)} km/h : ${output.toStringAsFixed(2)} m/s")
                        : Text(
                            "${input.toStringAsFixed(2)} m/s : ${output.toStringAsFixed(2)} km/h"),
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
