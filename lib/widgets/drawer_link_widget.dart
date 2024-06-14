/*
 * Copyright (c) 2020 .
 */

import 'package:flutter/material.dart';

class DrawerLinkWidget extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final bool? special;
  final bool? drawer;
  final ValueChanged<void>? onTap;
  const DrawerLinkWidget({
    Key? key,
    this.icon,
    this.text,
    this.onTap,
    this.drawer,
    this.special,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!('');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          children: [
            drawer! ?
            Icon(
              icon,
              color: !special! ? Color.fromRGBO(26,25,31, 1) : Color(0xFFFC1111), size: 22,
            ) : Icon(
              icon,
              color: !special! ? Color.fromRGBO(26,25,31, 1) : Color(0xFFFC1111),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              width: 1,
              height: 24,
              color: Colors.blue,
            ),
            Expanded(
              child: Text(text!, style: TextStyle(fontSize: 14, color: !special! ? Color.fromRGBO(26,25,31, 1) : Color(0xFFFC1111), fontWeight: FontWeight.normal)),
            ),
          ],
        ),
      ),
    );
  }
}
