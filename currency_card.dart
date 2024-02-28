import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, money;
  final IconData icon;
  final bool isInverted;
  final double dy;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.money,
    required this.icon,
    required this.isInverted,
    required this.dy,
  });

  final _blackColor = const Color.fromARGB(255, 35, 35, 35);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, dy),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                  child: Text(
                    name,
                    style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 6, 0),
                      child: Text(
                        money,
                        style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white),
                      ),
                    ),
                    Text(
                      code,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 141, 141, 141)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(-15, 13),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 67,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
