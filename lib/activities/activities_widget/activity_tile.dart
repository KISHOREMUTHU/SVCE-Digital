import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ActivityTile extends StatelessWidget {
  final String text;
  final String imageAsset;
  final dynamic materialRoute;
  ActivityTile(
      {@required this.text,
      @required this.imageAsset,
      @required this.materialRoute});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTile(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => (materialRoute is String)
                          ? SizedBox.fromSize(
                              size: Size(100, 1000),
                              child: WebView(
                                initialUrl: materialRoute,
                                javascriptMode: JavascriptMode.unrestricted,
                              ),
                            )
                          : materialRoute,
                    ));
              },
              child: Image(image: AssetImage(imageAsset), fit: BoxFit.cover),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black45,
              title: Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontSize: 14,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
