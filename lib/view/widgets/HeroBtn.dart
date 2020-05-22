import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/utils/cursor.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroBtn extends StatefulWidget {
  final title;
  final bool isOutline;
  bool hover = false;

  HeroBtn({this.title, this.isOutline = false});

  @override
  _HeroBtnState createState() => _HeroBtnState();
}

class _HeroBtnState extends State<HeroBtn> {
  @override
  Widget build(BuildContext context) {
    return Cursor(
      onHover: (value) {
        setState(() {
          widget.hover = value;
        });
      },
      child: Container(
        width: 155,
        height: 50,
        decoration: BoxDecoration(
          color: !widget.isOutline
              ? !widget.hover ? Colors.white : Colors.black
              : !widget.hover ? Colors.transparent : Colors.black,
          border: !widget.isOutline
              ? null
              : Border.all(
                  color: Colors.black,
                  width: .2,
                ),
        ),
        child: Center(
          child: Text(
            widget.title.toUpperCase(),
            style: GoogleFonts.asap(
              color: !widget.hover ? Colors.black : Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 15,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
