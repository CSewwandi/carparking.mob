import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/config/colors.dart';

class FloorSelector extends StatelessWidget {
  const FloorSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        focusColor: Colors.white,
        items: const [
          DropdownMenuItem(
            child: const Text("1st Floor"),
            value: "1st Floor",
          ),
          DropdownMenuItem(
            child: const Text("2nd Floor"),
            value: "2nd Floor",
          ),
          DropdownMenuItem(
            child: const Text("3rd Floor"),
            value: "3rd Floor",
          )
        ],
        onChanged: (value) {
        },
        hint: Text(
            "1 Floor",
            style: TextStyle(
              color: blueColor,
              fontSize: 15,
            ),
          ),);
  }
}
