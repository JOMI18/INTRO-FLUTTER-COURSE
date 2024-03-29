import "package:classapp/AppTemplates/The-Betterlife-App/ImportsPath.dart";

import 'package:flutter/material.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;

  late FocusNode focusnode1;
  late FocusNode focusnode2;
  late FocusNode focusnode3;
  late FocusNode focusnode4;

  @override
  void initState() {
    super.initState();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    controller4 = TextEditingController();
    focusnode1 = FocusNode();
    focusnode2 = FocusNode();
    focusnode3 = FocusNode();
    focusnode4 = FocusNode();

    focusnode1.requestFocus();
  }

  void dispose() {
    super.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    focusnode1.dispose();
    focusnode2.dispose();
    focusnode3.dispose();
    focusnode4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        children: [
          ComponentSlideIns(
            beginOffset: const Offset(-4, 0),
            duration: const Duration(milliseconds: 1200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Create new PIN",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Set your private 4-digit PIN to secure your account. Never disclose this to anyone!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ComponentSlideIns(
            beginOffset: const Offset(6, 0),
            duration: const Duration(milliseconds: 1200),
            child: Icon(Icons.lock,
                size: 50, color: Theme.of(context).iconTheme.color),
          ),
          const SizedBox(
            height: 40,
          ),
          ComponentSlideIns(
            beginOffset: const Offset(-4, 0),
            duration: const Duration(milliseconds: 1200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PasswordInputBox(
                    textController: controller1, focusnode: focusnode1),
                const SizedBox(
                  width: 8,
                ),
                PasswordInputBox(
                    textController: controller2, focusnode: focusnode2),
                const SizedBox(
                  width: 8,
                ),
                PasswordInputBox(
                    textController: controller3, focusnode: focusnode3),
                const SizedBox(
                  width: 8,
                ),
                PasswordInputBox(
                    textController: controller4, focusnode: focusnode4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
