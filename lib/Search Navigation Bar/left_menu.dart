import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/search_provider.dart';

Row leftMenu(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      MouseRegion(
        onHover: (pointerHoverEvent) {
          Provider.of<SearchProvider>(context, listen: false)
              .setDecorationUnderline(0);
        },
        onExit: (pointerHoverEvent) {
          Provider.of<SearchProvider>(context, listen: false)
              .setDecorationNone(0);
        },
        child: Consumer<SearchProvider>(
            builder: (context, searchProvider, child) => TextButton(
                onPressed: () {},
                child: Text("Sobre Google",
                    style: TextStyle(
                        fontSize: 14,
                        shadows: const [
                          Shadow(color: Colors.black, offset: Offset(0, -4))
                        ],
                        color: Colors.transparent,
                        decoration: searchProvider.textButtonDecorations[0],
                        decorationColor: Colors.black)))),
      ),
      MouseRegion(
          onHover: (pointerHoverEvent) {
            Provider.of<SearchProvider>(context, listen: false)
                .setDecorationUnderline(1);
          },
          onExit: (pointerHoverEvent) {
            Provider.of<SearchProvider>(context, listen: false)
                .setDecorationNone(1);
          },
          child: Consumer<SearchProvider>(
            builder: (context, searchProvider, child) => TextButton(
                onPressed: () {},
                child: Text(
                  "Tienda",
                  style: TextStyle(
                      fontSize: 14,
                      shadows: const [
                        Shadow(color: Colors.black, offset: Offset(0, -4))
                      ],
                      color: Colors.transparent,
                      decoration: searchProvider.textButtonDecorations[1],
                      decorationColor: Colors.black),
                )),
          ))
    ],
  );
}
