import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_shop/widget/button.dart';
import 'package:online_shop/widget/text.dart';
import 'package:online_shop/widget/text_input.dart';

class Authorization extends StatefulWidget {
  const Authorization({super.key});

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 1.2 * kToolbarHeight, 20, 20),
          // padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(children: [
                Align(
                  alignment: const AlignmentDirectional(3, -0.3),
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.pink),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-3, -0.3),
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.deepPurple),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, -1.2),
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(color: Colors.green),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                  child: Container(
                      decoration:
                          const BoxDecoration(color: Colors.transparent)),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(children: [
                    BigText(
                      title: 'Welcome!',
                    ),
                    InputText(title: "login"),
                    InputText(title: "password"),
                    NButton(
                      title: 'Entrance',
                    ),
                    NButton(
                      title: 'Registration',
                    )
                  ]),
                )
              ])),
        ));
  }
}