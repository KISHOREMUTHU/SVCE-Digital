import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Erp extends StatefulWidget {
  @override
  _ErpState createState() => _ErpState();
}

class _ErpState extends State<Erp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      // size: Size(100, 1000),
      child: WebView(
        initialUrl: 'https://svce.mastersofterp.in/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
