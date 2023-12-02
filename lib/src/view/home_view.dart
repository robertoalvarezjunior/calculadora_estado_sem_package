import 'package:flutter/material.dart';

import 'package:calculadora/src/controller/calc_controller.dart';
import 'package:calculadora/src/widgets/button_hub.dart';

import '../widgets/display/display_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = CalcController();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: DisplayView(value: controller.display),
          ),
          Expanded(
            flex: 3,
            child: ButtonHub(
              onButtonClick: controller.onButtonClick,
            ),
          ),
        ],
      ),
    );
  }
}
