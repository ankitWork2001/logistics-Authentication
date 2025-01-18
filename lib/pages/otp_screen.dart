import 'package:flutter/material.dart';
import 'package:logistic/components/color/app_color.dart';
import 'package:logistic/pages/sign_in_page.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> _otpControllers = List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepOceanBlue, // Replace AppColor.deepOceanBlue with actual color
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Logo Here",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter OTP:",
                    style: const TextStyle(
                      fontFamily: 'TimesNewRoman',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomText(text: "Email OTP:"),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // OTP Input Fields
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(6, (index) {
                            return SizedBox(
                              width: 25, // Width of each OTP box
                              height: 25, // Height of each OTP box
                              child: TextField(
                                controller: _otpControllers[index],
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  counterText: "", // Hides character count
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty && index < 5) {
                                    FocusScope.of(context).nextFocus();
                                  } else if (value.isEmpty && index > 0) {
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(width: 10), // Spacing between OTP fields and Verify button
                      // Verify Button
                      InkWell(
                        onTap: () {
                          String otp = _otpControllers.map((e) => e.text).join();
                          print("Entered OTP: $otp"); // Example action
                          // Add verification logic here
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                          decoration: BoxDecoration(
                            color: AppColor.deepOceanBlue , // Customize button color
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Verify",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  CustomText(text: "Mobile OTP:"),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // OTP Input Fields
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(6, (index) {
                            return SizedBox(
                              width: 25, // Width of each OTP box
                              height: 25, // Height of each OTP box
                              child: TextField(
                                controller: _otpControllers[index],
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  counterText: "", // Hides character count
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty && index < 5) {
                                    FocusScope.of(context).nextFocus();
                                  } else if (value.isEmpty && index > 0) {
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(width: 10), // Spacing between OTP fields and Verify button
                      // Verify Button
                      InkWell(
                        onTap: () {
                          String otp = _otpControllers.map((e) => e.text).join();
                          print("Entered OTP: $otp"); // Example action
                          // Add verification logic here
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                          decoration: BoxDecoration(
                            color: AppColor.deepOceanBlue , // Customize button color
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Verify",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      String otp = _otpControllers.map((e) => e.text).join();
                      print("Entered OTP: $otp"); // Example action
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));

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
                  SizedBox(height: 20),
                  InkWell(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already Have an Account?",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Sign In",style: TextStyle(color: AppColor.deepOceanBlue,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget CustomText({required String text}) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  );
}
