// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class MyWebView extends StatelessWidget {
// final String title;
// final String eventId;
//   final String eventDetailUrl = "http://172.17.40.196:6070/event/detail/";

//   final Completer<WebViewController> _controller =
//       Completer<WebViewController>();

//   MyWebView({
//     @required this.title,
//     @required this.eventId,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//           backgroundColor: Colors.lightGreen,
//         ),
//         body:
//          WebView(
//           initialUrl: eventDetailUrl+eventId,
//           javascriptMode: JavascriptMode.unrestricted,
//           onWebViewCreated: (WebViewController webViewController) {
//             _controller.complete(webViewController);
//           },
//           // onPageFinished: _handleLoad,
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  final String title;
  final String eventId;
  final String eventDetailUrl = "http://172.17.40.196:6070/event/detail/";

  MyWebView({
    @required this.title,
    @required this.eventId,
  });

  @override
  _MyWebView createState() =>
      _MyWebView(this.title, this.eventDetailUrl + eventId);
}

class _MyWebView extends State<MyWebView> {
  final _key = UniqueKey();
  final String title;
  final String eventUrl;

  _MyWebView(this.title, this.eventUrl);
  num _stackToView = 1;

  void _handleLoad(String value) {
    setState(() {
      _stackToView = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.lightGreen,
        ),
        body: IndexedStack(
          index: _stackToView,
          children: [
            Column(
              children: <Widget>[
                Expanded(
                    child: WebView(
                  key: _key,
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: eventUrl,
                  onPageFinished: _handleLoad,
                )),
              ],
            ),
            Container(
              color: Colors.white,
              child: Center(
                child: Image.asset('images/loading.gif'),
              ),
            ),
          ],
        ));
  }
}
