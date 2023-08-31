import 'package:flutter/material.dart';
import 'package:flutter_app_banhang/login_signin/signup_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: ListView(
          children: [

            Flexible(
              flex: 1,
              child: InkWell(
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.close),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),

            Flexible(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 130,
                    height: 130,
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/ic_app_icon.png"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.phone,
                        color: const Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: const Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                          color: const Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize),
                      hintText: "Phone Number",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: const Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: const Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: const Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                        color: const Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                      ),
                      hintText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: const Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFBC1F26),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: const BorderSide(color: Color(0xFFBC1F26))
                        ),
                      ),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins-Medium.ttf',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: const Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUpPage()),
                        )
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: const Color(0xFFAC252B),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}


