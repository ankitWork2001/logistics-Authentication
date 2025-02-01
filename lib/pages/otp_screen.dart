import 'package:flutter/material.dart';
import 'package:logistic/components/color/app_color.dart';
import 'package:logistic/pages/sign_in_page.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> _emailOtpControllers =
  List.generate(6, (index) => TextEditingController());
  final List<TextEditingController> _mobileOtpControllers =
  List.generate(6, (index) => TextEditingController());

  /// ✅ Function to get OTP value from controllers
  String _getOtpValue(List<TextEditingController> controllers) {
    return controllers.map((controller) => controller.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepOceanBlue,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      // ✅ Top Section (Logo)
                      Expanded(
                        child: Center(
                          child: Text(
                            "Logo Here",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),

                      // ✅ OTP Input Section (at Bottom)
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ✅ Email OTP
                              CustomText(text: "Email OTP:"),
                              SizedBox(height: 10),
                              _buildOtpField(_emailOtpControllers),

                              SizedBox(height: 10),


                              Center(
                                child: InkWell(
                                  onTap: () {
                                    String emailOtp = _getOtpValue(_emailOtpControllers);
                                    print("Entered Email OTP: $emailOtp");
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
                                    decoration:BoxDecoration(
                                        color: AppColor.deepOceanBlue,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Text("Verify",style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),

                              // ✅ Mobile OTP
                              CustomText(text: "Mobile OTP:"),
                              SizedBox(height: 10),
                              _buildOtpField(_mobileOtpControllers),

                              SizedBox(height: 10),

                              // ✅ Verify Mobile OTP Button
                              // Center(
                              //   child: ElevatedButton(
                              //     onPressed: () {
                              //       String mobileOtp = _getOtpValue(_mobileOtpControllers);
                              //       print("Entered Mobile OTP: $mobileOtp");
                              //     },
                              //     style: ElevatedButton.styleFrom(
                              //       backgroundColor: AppColor.deepOceanBlue,
                              //     ),
                              //     child: Text("Verify"),
                              //   ),
                              // ),
                              
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    String mobileOtp = _getOtpValue(_mobileOtpControllers);
                                    print("Entered Mobile OTP: $mobileOtp");
                                  },
                                  child: Container(
                                  padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
                                    decoration:BoxDecoration(
                                      color: AppColor.deepOceanBlue,
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Text("Verify",style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                              ),

                              SizedBox(height: 30),

                              // ✅ Sign Up Button
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignInPage()));
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    color: AppColor.deepOceanBlue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),

                              SizedBox(height: 20),

                              // ✅ Already Have an Account?
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already Have an Account?",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5),
                                    Text("Sign In",
                                        style: TextStyle(
                                            color: AppColor.deepOceanBlue,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),

                              SizedBox(height: 30), // Extra spacing at bottom
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// ✅ Function to build OTP input fields
  Widget _buildOtpField(List<TextEditingController> controllers) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            width: 50,
            height: 55,
            child: TextField(
              controller: controllers[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
              decoration: InputDecoration(
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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
          ),
        );
      }),
    );
  }
}

/// ✅ CustomText Widget
Widget CustomText({required String text}) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  );
}
