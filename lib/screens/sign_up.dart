import 'package:cypherdevs_app/screens/homeScreen.dart';
import 'package:cypherdevs_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(16.0, 100.0, 16.0, 50.0),
            child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Color.fromARGB(255, 209, 17, 129),
                    backgroundImage: AssetImage('assets/img/logo.png'),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Text(
                    'Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 174, 20, 110)),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  TextFieldWidget(
                    hintTitle: 'Enter Username',
                    radius: BorderRadius.circular(15.0),
                    frontIconColor: null,
                    hintTitleColor: Colors.grey, 
                    obscure: false,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFieldWidget(
                    hintTitle: 'Enter number',
                    radius: BorderRadius.circular(15.0),
                    frontIconColor: null,
                    hintTitleColor: Colors.grey, 
                    obscure: false,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFieldWidget(
                    hintTitle: 'Enter password',
                    radius: BorderRadius.circular(15.0),
                    frontIconColor: null,
                    hintTitleColor: Colors.grey, 
                    obscure: true,
                    backIcon: Icons.visibility,
                    backIconColor: Colors.grey,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFieldWidget(
                    hintTitle: 'Confirm password',
                    radius: BorderRadius.circular(15.0),
                    frontIconColor: null,
                    hintTitleColor: Colors.grey, 
                    obscure: true,
                    backIcon: Icons.visibility,
                    backIconColor: Colors.grey,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                    child: ElevatedButton(
                    style: const ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(500.0, 30.0)),
                      backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 154, 5, 92)
                      ),
                    ),
                    onPressed: () => Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => const HomePage()
                      )
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    )
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextButton.icon(
                    onPressed: (){}, 
                    label: const Text(
                    'Sign in with google'
                    ),
                    icon: const Icon(
                      Icons.g_mobiledata,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
