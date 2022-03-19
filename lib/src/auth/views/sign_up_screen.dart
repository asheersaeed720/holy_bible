import 'package:flutter/material.dart';
import 'package:holy_bible/utils/constants.dart';
import 'package:holy_bible/widgets/custom_async_btn.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign-up';

  SignUpScreen({Key? key}) : super(key: key);

  final nameController = TextEditingController();
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      'Create an Account',
                      style: kTitleStyle,
                    ),
                    const SizedBox(height: 16),
                    Image.asset(
                      'assets/images/divider.jpg',
                      width: 130.0,
                    ),
                    const SizedBox(height: 16),
                    userInput(nameController, 'Name', TextInputType.text),
                    const SizedBox(height: 16),
                    userInput(emailController, 'Email', TextInputType.emailAddress),
                    const SizedBox(height: 16),
                    userInput(passwordController, 'Password', TextInputType.visiblePassword),
                    const SizedBox(height: 20),
                    CustomAsyncBtn(
                      btntxt: 'SIGN UP',
                      onPress: () {},
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
