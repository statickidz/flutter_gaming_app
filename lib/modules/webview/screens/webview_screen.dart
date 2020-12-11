import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';

class WebviewScreen extends StatefulWidget {
  final String src;

  WebviewScreen({@required this.src});

  @override
  _WebviewScreenState createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  @override
  Widget build(BuildContext context) {
    return EasyWebView(
      src: this.widget.src,
      isHtml: false,
      isMarkdown: false,
      convertToWidgets: false,
      onLoaded: () {},
    );
  }
}
