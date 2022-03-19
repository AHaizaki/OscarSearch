import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/search_provider.dart';

Row rightMenu(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      MouseRegion(
        onHover: (pointerHoverEvent) {
          Provider.of<SearchProvider>(context, listen: false)
              .setDecorationUnderline(2);
        },
        onExit: (pointerHoverEvent) {
          Provider.of<SearchProvider>(context, listen: false)
              .setDecorationNone(2);
        },
        child: Consumer<SearchProvider>(
            builder: (context, searchProvider, child) => TextButton(
                onPressed: () {},
                child: Text("Gmail",
                    style: TextStyle(
                        fontSize: 13,
                        shadows: const [
                          Shadow(color: Colors.black, offset: Offset(0, -4))
                        ],
                        color: Colors.transparent,
                        decoration: searchProvider.textButtonDecorations[2],
                        decorationColor: Colors.black)))),
      ),
      MouseRegion(
          onHover: (pointerHoverEvent) {
            Provider.of<SearchProvider>(context, listen: false)
                .setDecorationUnderline(3);
          },
          onExit: (pointerHoverEvent) {
            Provider.of<SearchProvider>(context, listen: false)
                .setDecorationNone(3);
          },
          child: Consumer<SearchProvider>(
            builder: (context, searchProvider, child) => TextButton(
                onPressed: () {},
                child: Text(
                  "Imágenes",
                  style: TextStyle(
                      fontSize: 13,
                      shadows: const [
                        Shadow(color: Colors.black, offset: Offset(0, -4))
                      ],
                      color: Colors.transparent,
                      decoration: searchProvider.textButtonDecorations[3],
                      decorationColor: Colors.black),
                )),
          )),
      ElevatedButton(onPressed: () {}, child: const Text("Iniciar Sesion"))
    ],
  );
}
