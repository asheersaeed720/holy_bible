import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_bible/src/auth/views/sign_up_screen.dart';
import 'package:holy_bible/src/tab_screen.dart';
import 'package:holy_bible/utils/constants.dart';
import 'package:holy_bible/widgets/custom_async_btn.dart';

class LogInScreen extends StatelessWidget {
  static const routeName = '/login';

  LogInScreen({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/bible.jpg',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: kTitleStyle,
                    ),
                    Image.asset(
                      'assets/images/divider.jpg',
                      width: 130.0,
                    ),
                    userInput(emailController, 'Email', TextInputType.emailAddress),
                    userInput(passwordController, 'Password', TextInputType.visiblePassword),
                    Text(
                      'Forgot password ?',
                      style: kBodyStyle,
                    ),
                    CustomAsyncBtn(
                      btntxt: 'LOG IN',
                      onPress: () {
                        Get.toNamed(TabScreen.routeName);
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account yet ? ',
                          style: TextStyle(
                            color: Colors.black54,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(SignUpScreen.routeName);
                          },
                          child: Text(
                            'Sign Up',
                            style: kBodyStyle.copyWith(color: kPrimaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget userInput(TextEditingController userInput, String hintTitle, TextInputType keyboardType) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        controller: userInput,
        decoration: InputDecoration(
          filled: true,
          hintText: hintTitle,
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
