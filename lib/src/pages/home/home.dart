import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_switch_between_page/src/pages/home/loading.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return _isLoading ? LoadingPage()
    : Scaffold(
      backgroundColor:  Color.fromARGB(255, 227, 227, 227),
      appBar: AppBar(
        title: Text('LoadingPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Column(
          children: [
            const SizedBox(height: 55),
            Align(
              alignment: Alignment.topCenter,
              child: Text('Home Page', style: GoogleFonts.openSans(fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: ElevatedButton(onPressed: () async {
                setState(() {
                  _isLoading = true;
                });
                await Future.delayed(const Duration(seconds: 3));
                setState(() {
                  _isLoading = false;
                });

              }, child: Text('Load', style: TextStyle(fontSize: 20,),)),
            )
          ],
        ),
      ),
    );
  }
}