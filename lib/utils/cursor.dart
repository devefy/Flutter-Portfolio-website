import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class Cursor extends StatelessWidget {
  const Cursor({
    Key key,
    this.onHover,
    this.enabled = true,
    @required this.child,
  }) : super(key: key);

  final ValueChanged<bool> onHover;
  final bool enabled;
  final Widget child;

  void _onHover(PointerHoverEvent evt) {
    html.window.document.documentElement.style.cursor = 'pointer';
    onHover?.call(true);
  }

  void _onExit(PointerExitEvent evt) {
    html.window.document.documentElement.style.cursor = 'auto';
    onHover?.call(false);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: enabled ? _onHover : null,
      onExit: enabled ? _onExit : null,
      child: child,
    );
  }
}
