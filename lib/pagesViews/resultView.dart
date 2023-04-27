import 'package:bmi_calcultor_git/pagesViews/homeView.dart';
import 'package:flutter/material.dart';

import '../wedgits/tableCellWedgit.dart';

class ResultView extends StatefulWidget {
  const ResultView({super.key});
  static const id = "ResultView";
  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23253A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF23253A),
        title: const Text("Client Information"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Table(
            defaultColumnWidth: const FixedColumnWidth(190),
            border: TableBorder.all(
              width: 1,
              color: const Color.fromARGB(255, 116, 118, 143),
            ),
            children: [
              TableRow(
                children: [
                  const TableCellWedgit(text: "Client gender"),
                  TableCellWedgit(text: gender)
                ],
              ),
              TableRow(
                children: [
                  const TableCellWedgit(text: "Age"),
                  TableCellWedgit(text: currentAgeValue.toStringAsFixed(0)),
                ],
              ),
              TableRow(
                children: [
                  const TableCellWedgit(text: "Height"),
                  TableCellWedgit(text: currentSliderValue.toStringAsFixed(1))
                ],
              ),
              TableRow(
                children: [
                  const TableCellWedgit(text: "Weight"),
                  TableCellWedgit(text: "$currentWeightValue")
                ],
              ),
              TableRow(
                children: [
                  const TableCellWedgit(text: "Healthy Weight between"),
                  TableCellWedgit(
                      text:
                          "${LeastHealthyWeightRange.toStringAsFixed(2)}-${highestHealthyWeightRange.toStringAsFixed(2)}")
                ],
              ),
              TableRow(
                children: [
                  const TableCellWedgit(text: "Your Bmi is"),
                  TableCellWedgit(text: Bmi_Calc.toStringAsFixed(2))
                ],
              ),
              const TableRow(
                children: [
                  TableCellWedgit(text: "Healthy Bmi between"),
                  TableCellWedgit(text: "18.5 - 24.9")
                ],
              ),
              TableRow(
                children: [
                  const TableCellWedgit(text: "Health Situation"),
                  TableCellWedgit(text: healthSituation)
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentSliderValue = 0;
                    currentWeightValue = 0;
                    currentAgeValue = 0;
                    gender = "";
                    Bmi_Calc = 0;
                    LeastHealthyWeightRange = 0;
                    highestHealthyWeightRange = 0;
                    healthSituation = "";
                    last_button_value = "CALCULT";
                    maleIconSize = 90;
                    FemaleIconSize = 90;
                    maleIconColor = 0xFFFFFFFF;
                    femaleIconColor = 0xFFFFFFFF;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE83D66),
                ),
                child: const Text(
                  "Resset Your Data",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
