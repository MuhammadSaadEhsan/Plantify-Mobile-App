import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/signup.dart';
import 'package:hackathon1/Screens/start.dart';
import 'package:hackathon1/service.dart';
import 'package:hackathon1/widgets/elevatedbtn.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});
  AppServices myServices = AppServices();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Start(),
                      ));
                },
                child: Image.asset(
                  "assets/icon.png",
                  height: 50,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/image3.png",
                    // width: 172,
                    height: 28,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    "Plantify",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Login",
                    style: GoogleFonts.philosopher(
                        color: Start.primaryColor,
                        fontSize: 36,
                        fontWeight: FontWeight.w900)),
              ),
              Text(
                "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Culpa, vel!",
                style: TextStyle(color: Start.primaryColor, fontSize: 14),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text("Username / Email",
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Enter User Name / Email",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Password",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              TextField(
                controller: passController,
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 190),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Start.primaryColor),
                      ))),
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: elevatedBtn("Login", onPress: () {
                myServices.signin(context, emailController.text, passController.text);
              })),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ));
                    },
                    child: Text(
                      "Sign Up?",
                      style: TextStyle(color: Start.primaryColor),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
