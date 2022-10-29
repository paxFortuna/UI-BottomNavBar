import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class ShareImageAndLink extends StatefulWidget {
  const ShareImageAndLink({Key? key}) : super(key: key);

  @override
  State<ShareImageAndLink> createState() => _ShareImageAndLinkState();
}

class _ShareImageAndLinkState extends State<ShareImageAndLink> {
  final baseUrl = 'https://images.unsplash.com';
  final photoNum = 'photo-1523395555535-a43123287dbc';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 227, 227),
      appBar: AppBar(title: Text('Share Image & Link'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: Column(
            children: [
              Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(blurRadius: 12, color: Colors.grey.shade900)
                    ],
                    color: const Color.fromARGB(255, 62, 62, 62),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            height: 400,
                            width: 400,
                            child: Image.network(
                              '$baseUrl/$photoNum?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        'Beautiful Subway',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SizedBox(
                      width: 190,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () async {
                          final urlPreview =
                              '$baseUrl/$photoNum?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';
                          final url = Uri.parse(urlPreview);
                          final response = await http.get(url);
                          final bytes = response.bodyBytes;

                          final temp = await getTemporaryDirectory();
                          final path = '${temp.path}/image.jpg';
                          File(path).writeAsBytesSync(bytes);
                          await Share.shareFiles([path],
                              text: 'Hey, Look, so beautiful');
                        },
                        child: const Text(
                          'Send',
                          style: TextStyle(fontSize: 18),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}