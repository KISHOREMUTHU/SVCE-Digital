import 'package:flutter/material.dart';
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
    return Card(
      elevation: 8,
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
            title: Text(text,
                softWrap: true,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                )),
          )),
    );
  }
}
