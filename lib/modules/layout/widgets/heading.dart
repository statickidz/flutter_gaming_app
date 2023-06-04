import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const Heading({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        ),
        Spacer(flex: 1),
        onPressed != null
            ? Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: this.onPressed,
                    child: Text(
                      'View all',
                      style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                ),
              )
            : Spacer(),
      ],
    );
  }
}
