import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_chat_types/flutter_chat_types.dart' show PreviewData;
import 'package:flutter_link_previewer/flutter_link_previewer.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart' show LinkPreviewData;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 // Map<String, PreviewData> datas = {};
  LinkPreviewData? _linkPreviewData;
  List<String> get urls => const [
        'github.com/flyerhq',
        'https://u24.gov.ua',
        'https://twitter.com/SpaceX/status/1564975288655630338',
        'github.com/flyerhq',
        'https://u24.gov.ua',
        'https://twitter.com/SpaceX/status/1564975288655630338',
        'github.com/flyerhq',
        'https://u24.gov.ua',
        'https://twitter.com/SpaceX/status/1564975288655630338',
      ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: urls.length,
        itemBuilder: (context, index) => Align(
          alignment: Alignment.centerLeft,
          child: Container(
            key: ValueKey(urls[index]),
            margin: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Color(0xfff7f7f8),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: LinkPreview(
                // The text that should be parsed to find the first URL
                text:  urls[index],
                // Pass the cached preview data to avoid re-fetching
                linkPreviewData: _linkPreviewData,
                // Callback to store the fetched preview data
                onLinkPreviewDataFetched: (data) {
                  setState(() {
                    _linkPreviewData = data;
                  });
                },
                // For a chat bubble, you would pass the message text here
                // to align the preview with the text bubble.
               /// parentContent: widget.message,
                // Customization example
                borderRadius: 4,
                sideBorderColor: Colors.white,
                sideBorderWidth: 4,
                insidePadding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                outsidePadding: const EdgeInsets.symmetric(vertical: 4),
                titleTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
