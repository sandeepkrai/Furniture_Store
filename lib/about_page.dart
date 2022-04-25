import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class intro extends StatelessWidget {
  const intro({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Our Products',
          style: GoogleFonts.varelaRound(
            color: ColorConstants.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          Center(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => intro(key: Key(''),),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'About Us',
                          style: GoogleFonts.varelaRound(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('assets/images/sandeep1.jpg'),
          ),
          Text(
            "Sandeep Rai",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'SyneMono',
            ),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: 'Hubballi',
            ),
          ),
          SizedBox(
            height: 30.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal[100],
              thickness: 2.0,
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.phone,
                size: 40.0,
              ),
              title: Text(
                "+91 9369204281",
                style: GoogleFonts.varelaRound(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.email,
                size: 40.0,
              ),
              title: Text(
                "contact4rai@gmail.com",
                style: GoogleFonts.varelaRound(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.location_city,
                size: 40.0,
              ),
              title: Text(
                "Varanasi, Uttar Pradesh ",
                style: GoogleFonts.varelaRound(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
