import 'package:flutter/material.dart';
import 'package:logistic/components/color/app_color.dart';
import 'package:logistic/pages/forget_password.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? selectedValue = "User";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor:AppColor.deepOceanBlue, // Replace AppColor.deepOceanBlue with actual color
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end, // Align content to the start
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Logo Here",style: TextStyle(fontSize: 30 ,color: Colors.white,),)
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), // Round only the top-left corner
                  topRight: Radius.circular(20), // Round only the top-right corner
                ),
              ),

              padding: const EdgeInsets.all(16), // Add some padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align content within column
                children: [
                  Text(
                    "Sign In",
                    style: const TextStyle(
                      fontFamily: 'TimesNewRoman', // Ensure this font is properly added to pubspec.yaml
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16), // Add spacing
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribute space between items
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
                      Flexible(
                        child: RadioListTile<String>(
                          title: const Text("Admin"),
                          value: "Admin",
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


                  const SizedBox(height: 16), // Add spacing
                  CustomText(text: "Email or Mobile number"),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Email Id or Mobile number",
                    ),
                  ),
                  SizedBox(height: 10,),
                  CustomText(text: "Password"),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                    ),
                  ),
                  SizedBox(height: 10,),

                  InkWell(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("Click here",style: TextStyle(color: AppColor.deepOceanBlue,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                    },
                    child: Container(
                      width: double.infinity, // Ensures the container spans the full width
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20), // Adjust horizontal padding as needed
                      decoration: BoxDecoration(
                          color: AppColor.deepOceanBlue,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white), // Optional: Style the text
                        textAlign: TextAlign.center, // Center align the text
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't Have an Account?",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Sign Up",style: TextStyle(color: AppColor.deepOceanBlue,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget CustomText({required String text}){
  return  Text(text,style:const TextStyle(

      fontWeight: FontWeight.bold,
      fontSize: 16
  ),);
}
