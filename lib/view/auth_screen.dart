import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../gen/assets.gen.dart';
import '../widgets/layout/root.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var colorScheme = Theme.of(context).colorScheme;

    return Root(
        appbar: AppBar(
          title: Text(
            'Authenticate',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          toolbarHeight: size.height * 0.1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                children: [
                  Transform.rotate(
                    angle: -0.4,
                    child: Assets.img.wallet.image(
                      scale: 3.8,
                    ),
                  ),
                  SizedBox(height: size.height * 0.09),
                  Text(
                    'Connect with wallet',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: colorScheme.primary
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: const Text(
                      'Your crypto wallet unlocks the world of web3. Connect to our wallet provider or create a new one.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8E8E8E),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  GestureDetector(
                    onTap: () {
                      HapticFeedback.mediumImpact();

                      Get.toNamed('/main');
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFE5E5E5),
                          width: 3,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: CircleAvatar(
                          child: Assets.img.metamask.image(),
                          radius: size.width * 0.15,
                          backgroundColor: colorScheme.background,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    'MetaMask',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: colorScheme.primary
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Text("New to wallets?",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse('https://metamask.io/'));
                  },
                  child: Text("Learn more",
                      style: TextStyle(
                          fontSize: 16,
                          color: colorScheme.primary,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(height: size.height * 0.01),
              ],
            )
          ],
        ));
  }
}
