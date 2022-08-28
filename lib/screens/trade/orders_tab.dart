import 'package:b2bx/config/config.dart';
import 'package:flutter/material.dart';

class OrdersTab extends StatefulWidget {
  const OrdersTab({super.key});

  @override
  State<OrdersTab> createState() => _OrdersTabState();
}

class _OrdersTabState extends State<OrdersTab> {
  List<bool> _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ToggleButtons(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Opened',
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Filled',
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Inactivie',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            isSelected: _selections,
            onPressed: (int index) {
              setState(() {
                _selections[index] = !_selections[index];

                if (index == 0 && _selections[index]) {
                  // TxtBold=FontWeight.bold;
                  _selections[1] = false;
                  _selections[2] = false;
                } else if (index == 0 && !_selections[index]) {
                  // TxtBold=FontWeight.normal;
                }

                if (index == 1 && _selections[index]) {
                  _selections[0] = false;
                  _selections[2] = false;
                  // TxtItalic=FontStyle.italic;
                } else if (index == 1 && !_selections[index]) {
                  // TxtItalic=FontStyle.normal;
                }

                if (index == 2 && _selections[index]) {
                  _selections[0] = false;
                  _selections[1] = false;
                  // TxtUnder=TextDecoration.underline;
                } else if (index == 2 && !_selections[index]) {
                  // TxtUnder=TextDecoration.none;
                }
              });
            },
            color: const Color.fromARGB(255, 75, 174, 135),
            selectedColor: Colors.black,
            fillColor: Color.fromARGB(255, 75, 174, 135),
            borderColor: Color.fromARGB(255, 75, 174, 135),
            selectedBorderColor: Color.fromARGB(255, 75, 174, 135),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          const SizedBox(height: 50),
          Text(
            'No records found',
            style: TextStyle(color: Config().text10Color),
          ),
        ],
      ),
    );
  }
}
