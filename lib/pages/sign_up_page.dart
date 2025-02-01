import 'package:flutter/material.dart';
import 'package:logistic/components/color/app_color.dart';
import 'package:logistic/pages/otp_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String? selectedValue = "User";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepOceanBlue,
      body: SafeArea(
        child: SingleChildScrollView( // Prevent bottom overflow
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2), // Adds spacing from top
              Center(
                child: Text(
                  "Logo",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              SizedBox(height: 30), // Add spacing
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.only(top: 16,left: 16,right: 16,bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: RadioListTile<String>(
                            title: const Text("User"),
                            value: "User",
                            groupValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile<String>(
                            title: const Text("Driver"),
                            value: "Driver",
                            groupValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    CustomText(text: "Email:"),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Enter Email Id"),
                    ),
                    SizedBox(height: 10),
                    CustomText(text: "Mobile Number:"),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Enter mobile Number"),
                    ),
                    SizedBox(height: 10),
                    CustomText(text: "Password:"),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Enter Password"),
                    ),
                    SizedBox(height: 10),
                    CustomText(text: "Confirm Password"),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Enter Confirm Password"),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OtpScreen()),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColor.deepOceanBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already Have an Account?", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 5),
                          Text(
                            "Sign In",
                            style: TextStyle(color: AppColor.deepOceanBlue, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget CustomText({required String text}) {
  return Text(
    text,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
  );
}
