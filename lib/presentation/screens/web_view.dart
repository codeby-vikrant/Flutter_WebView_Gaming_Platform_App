import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  final String url;
  const WebViewScreen({super.key, required this.url});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late WebViewController _controller;
  final bool _isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game WebView')),
      body: const Stack(
        children: [
          WebView(
            initialUrl: widget.url,
            javascriptMode: JavaScriptMode.unrestricted,
            onWebViewCreated: (controller){
              _controller = controller;
            },
            onPageFinished: (url){
              setState(() {
                _isLoading = false;
              });
            },
          ),
          _isLoading ? Center(child: CircularProgressIndicator()):Container(),
        ],
      ),
    );
  }
}
