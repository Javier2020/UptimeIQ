import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class AdsenseWidget extends StatelessWidget {
  const AdsenseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Register the iframe view
    ui.platformViewRegistry.registerViewFactory(
      'adViewType',
      (int viewId) => IFrameElement()
        ..src = 'adview.html'
        ..style.border = 'none'
        ..width = '320'
        ..height = '100',
    );

    return const SizedBox(
      height: 100,
      width: 320,
      child: HtmlElementView(viewType: 'adViewType'),
    );
  }
}
