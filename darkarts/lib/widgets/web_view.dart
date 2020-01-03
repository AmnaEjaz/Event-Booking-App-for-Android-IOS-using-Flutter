import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyWebView extends StatelessWidget {
final String title;
final String eventId;
final String eventDetailUrl = "http://172.17.40.196:6070/event/detail/";
final flutterWebviewPlugin = new FlutterWebviewPlugin();
      

  MyWebView({
    @required this.title,
    @required this.eventId,
  });

  @override
  Widget build(BuildContext context) {
    bool runOnce = false;
    bool reloadOnce = false;
    var token  = getStringValuesSP();
      flutterWebviewPlugin.onStateChanged.listen((viewState) async {
      if (viewState.type == WebViewState.finishLoad ) {
      final res = await flutterWebviewPlugin.evalJavascript("(function() { try {  window.localStorage.setItem('token', '$token');}  catch (err) { return err; } })();");
      runOnce = true;
      }
      // if(viewState.type == WebViewState.finishLoad && reloadOnce == false){
      //    await flutterWebviewPlugin.reload();
      //     reloadOnce = true;
      // }
    });
    return 
    WebviewScaffold(
      appBar: new AppBar(
        title: Text(title),
        backgroundColor: Colors.lightGreen,
      ),
      url: eventDetailUrl+eventId,
      withZoom: true,
      withLocalStorage: true,
      withJavascript: true,
      initialChild: Container(
        color: Colors.white,
        child: Center(child: Image.asset('images/loading.gif'))
      ),
    );

        //  WebView(
        //   initialUrl: eventDetailUrl+eventId,
        //   javascriptMode: JavascriptMode.unrestricted,
        //   onWebViewCreated: (WebViewController webViewController) {
        //     _controller.complete(webViewController);
        //   },
        //   // onPageFinished: _handleLoad,
        // ));
  }
    getStringValuesSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
     var token = prefs.getString('token');
     print(" ---> $token");
     return token;
  }
}

// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';


// class MyWebView extends StatefulWidget {
//   final String title;
//   final String eventId;
//   final String eventDetailUrl = "http://172.17.40.196:6070/event/detail/";

//   MyWebView({
//     @required this.title,
//     @required this.eventId,
//   });

//   @override
//   _MyWebView createState() =>
//       _MyWebView(this.title, this.eventDetailUrl + eventId);
// }

// class _MyWebView extends State<MyWebView> {
//   final _key = UniqueKey();
//   final String title;
//   final String eventUrl;

//   _MyWebView(this.title, this.eventUrl);
//   num _stackToView = 1;

//   void _handleLoad(String value) {
//     setState(() {
//       _stackToView = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//           backgroundColor: Colors.lightGreen,
//         ),
//         body: IndexedStack(
//           index: _stackToView,
//           children: [
//             Column(
//               children: <Widget>[
//                 Expanded(
//                     child: 
                    
                    
//                   WebView(
//                   key: _key,
//                   javascriptMode: JavascriptMode.unrestricted,
//                   initialUrl: eventUrl,
//                   onPageFinished: _handleLoad,
//                 ),
                
                
//                 ),
//               ],
//             ),
//             Container(
//               color: Colors.white,
//               child: Center(
//                 child: Image.asset('images/loading.gif'),
//               ),
//             ),
//           ],
//         ));
//   }
// }
