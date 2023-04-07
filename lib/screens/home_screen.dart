import 'dart:math';

import 'package:accordion/accordion.dart';
import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';


import '../components/custom_text.dart';
import '../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Color colorBackgroundScaffold = colorWhite;

  final Random random = Random();

  void changeColorBackground() {
    setState(() {
      colorBackgroundScaffold = Color.fromARGB(
        random.nextInt(alpha225),
        random.nextInt(red91),
        random.nextInt(green207),
        random.nextInt(blue227),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor:
            colorBackgroundScaffold == colorWhite
              ? colorBackgroundAppBar
              : colorBackgroundScaffold,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(fontText25),
            bottomLeft: Radius.circular(fontText25),
          ),
        ),
        title: CustomText(
          text: 'Test App',
          color: colorBlack,
          fontSize: fontText25,
        ),
      ),
      body: GestureDetector(
        onTap: changeColorBackground,
        child: ColoredBox(
          color: colorBackgroundScaffold,
          child: AnimatedBackground(
            behaviour: BubblesBehaviour(),
            vsync: this,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text (Hello There)
                CustomText(
                  text: 'Hello There',
                  color: colorBlack,
                  fontSize: fontText20,
                ),


                //Text (About Solid Software)
                SizedBox(height: 50,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    text: 'About Solid Software',
                    color: colorBlack,
                    fontSize: fontText20,
                  ),
                ),


                //Section 1 (Give Credit) +
                //Section 2 (Beginners Mind) +
                //Section 3 (Lifelong Learning) +
                //Section 4 (Accept Full Responsibility) +
                //Section 5 (Best Solution) +
                //Section 6 (Respect)
                Accordion(
                  maxOpenSections: maxOpenSections2,
                  headerBackgroundColor:
                      colorBackgroundScaffold == colorWhite
                        ? colorBackgroundAppBar
                        : colorBackgroundScaffold,
                  headerBackgroundColorOpened:
                      colorBackgroundScaffold == colorWhite
                          ? colorBackgroundAppBar
                          : colorBackgroundScaffold,
                  headerPadding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  children: [
                    // Section 1 (Give Credit)
                    AccordionSection(
                      isOpen: false,
                      header: CustomText(
                        text: 'Give Credit',
                        color: colorBlack,
                        fontSize: fontText18,
                      ),
                      content: CustomText(
                        text: 'Make sure to recognise all help you received,'
                            ' praise for ideas and suggestions.',
                        color: colorBlack,
                        fontSize: fontText16,
                      ),
                    ),

                    // Section 2 (Beginners Mind)
                    AccordionSection(
                      isOpen: false,
                      header: CustomText(
                        text: 'Beginners Mind',
                        color: colorBlack,
                        fontSize: fontText18,
                      ),
                      content: CustomText(
                        text: 'We don’t know everything,'
                            ' everyday is ability to learn something new.',
                        color: colorBlack,
                        fontSize: fontText16,
                      ),
                    ),

                    // Section 3 (Lifelong Learning)
                    AccordionSection(
                      isOpen: false,
                      header: CustomText(
                        text: 'Lifelong Learning',
                        color: colorBlack,
                        fontSize: fontText18,
                      ),
                      content: CustomText(
                        text: 'Self-motivated” pursuit of knowledge'
                            ' for either personal or professional reasons.',
                        color: colorBlack,
                        fontSize: fontText16,
                      ),
                    ),

                    // Section 4 (Accept Full Responsibility)
                    AccordionSection(
                      isOpen: false,
                      header: CustomText(
                        text: 'Accept Full Responsibility',
                        color: colorBlack,
                        fontSize: fontText18,
                      ),
                      content: CustomText(
                        text: 'Be responsible. Whenever we'
                            ' see something wrong - we fix it.',
                        color: colorBlack,
                        fontSize: fontText16,
                      ),
                    ),

                    // Section 5 (Best Solution)
                    AccordionSection(
                      isOpen: false,
                      header: CustomText(
                        text: 'Best Solution',
                        color: colorBlack,
                        fontSize: fontText18,
                      ),
                      content: CustomText(
                        text: 'We put all our effort to find the best solution '
                            'for the problem.',
                        color: colorBlack,
                        fontSize: fontText16,
                      ),
                    ),

                    // Section 6 (Respect)
                    AccordionSection(
                      isOpen: false,
                      header: CustomText(
                        text: 'Respect',
                        color: colorBlack,
                        fontSize: fontText18,
                      ),
                      content: CustomText(
                        text: 'Your work, your peers '
                            '(thoughts, nature and solutions).',
                        color: colorBlack,
                        fontSize: fontText16,
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
