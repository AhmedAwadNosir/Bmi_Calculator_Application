import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

double currentSliderValue = 0;
double currentWeightValue = 0;
double currentAgeValue = 0;
double Bmi_Calc = 0;
String last_button_value = "CALCULT";

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF23253A),
        appBar: AppBar(
          backgroundColor: const Color(0xFF23253A),
          title: const Text("BMICALCULTOR"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF313143),
                    ),
                    height: 210,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.male,
                          size: 90,
                          color: Colors.white,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF313143),
                    ),
                    height: 210,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.female,
                          size: 90,
                          color: Colors.white,
                        ),
                        Text(
                          "FEMALE",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF313143),
                  ),
                  height: 200,
                  width: 375,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "HEIGHT",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${currentSliderValue.toInt()}",
                            style: const TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "cm",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                      Slider(
                        onChanged: (value) {
                          setState(() {
                            currentSliderValue = value;
                          });
                        },
                        value: currentSliderValue,
                        min: 0,
                        max: 300,
                        divisions: 300,
                        label: currentSliderValue.round().toString(),
                        inactiveColor: Colors.grey,
                        activeColor: const Color(0xFFE83D66),
                      ),
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF313143),
                    ),
                    height: 210,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "weight",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        Text(
                          "${currentWeightValue.round()}",
                          style: const TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (currentWeightValue > 0) {
                                    currentWeightValue--;
                                  }
                                });
                              },
                              backgroundColor:
                                  const Color.fromARGB(255, 105, 104, 121),
                              child: const Icon(
                                Icons.remove,
                                size: 35,
                              ),
                            ),
                            const SizedBox(
                              width: 27,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  currentWeightValue++;
                                });
                              },
                              backgroundColor:
                                  const Color.fromARGB(255, 105, 104, 121),
                              child: const Icon(
                                Icons.add,
                                size: 35,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF313143),
                    ),
                    height: 210,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        Text(
                          "${currentAgeValue.round()}",
                          style: const TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (currentAgeValue > 0) {
                                    currentAgeValue--;
                                  }
                                });
                              },
                              backgroundColor:
                                  const Color.fromARGB(255, 105, 104, 121),
                              child: const Icon(
                                Icons.remove,
                                size: 35,
                              ),
                            ),
                            const SizedBox(
                              width: 27,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  currentAgeValue++;
                                });
                              },
                              backgroundColor:
                                  const Color.fromARGB(255, 105, 104, 121),
                              child: const Icon(
                                Icons.add,
                                size: 35,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (currentWeightValue > 0 && currentSliderValue > 0) {
                        Bmi_Calc = currentWeightValue /
                            ((currentSliderValue / 100) *
                                (currentSliderValue / 100));
                        last_button_value = " ${Bmi_Calc.toStringAsFixed(2)}";
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE83D66),
                  ),
                  child: Text(
                    last_button_value,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
