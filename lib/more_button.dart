import 'package:flutter/material.dart';
import 'razorpay.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';

class morebutton extends StatelessWidget {
  const morebutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => RazorPay(),
          ));
        },
        child: Container(
          width: 100,
          height: 70,
          decoration: BoxDecoration(
              color: ColorConstants.primaryColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'more',
                style: GoogleFonts.varelaRound(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
