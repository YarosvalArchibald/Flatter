import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_ui/pages/login_page.dart';

import '../../model/user.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePage();
}

class _LanguagePage extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        minimumSize: const Size(150, 70),
        primary: Colors.white,
        // primary instead of bg (maybe)
        textStyle: const TextStyle(
            fontSize: 20, color: Colors.purple, fontWeight: FontWeight.w400));
    return Scaffold(
      body: Center(
        child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: style,
                    onPressed: () async {
                      await context.setLocale(Locale('ru'));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Русский",
                      style: TextStyle(
                          color: Colors.deepPurple, fontFamily: 'Montserrat'),
                    )),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    style: style,
                    onPressed: () async {
                      await context.setLocale(Locale('kk'));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "ҚазаҚша",
                      style: TextStyle(
                          color: Colors.deepPurple, fontFamily: 'Montserrat'),
                    )),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    style: style,
                    onPressed: () async {
                      await context.setLocale(Locale('en'));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "English",
                      style: TextStyle(
                          color: Colors.deepPurple, fontFamily: 'Montserrat'),
                    )),
              ],
            )),
      ),
    );
  }
}