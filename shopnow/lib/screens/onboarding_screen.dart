import 'package:flutter/material.dart';
import 'package:shopnow/custom_methods/login_modal_sheet.dart';
import 'package:shopnow/utils/app_colors.dart';
import 'package:shopnow/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            //color: Colors.red,
            margin: const EdgeInsets.only(top: 12, right: 12, left: 12),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: AppColors.greenLight),
                  height: 350,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 47,
                            width: 47,
                            decoration: const BoxDecoration(
                              //color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/main_assets/cart.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Text(
                            "Shop Now",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      //SizedBox(height: 20),
                      Container(
                        height: 220,
                        width: 300,
                        decoration: const BoxDecoration(
                          //color: Colors.amber,
                          image: DecorationImage(
                            image: AssetImage('assets/main_assets/shop.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Welcome to Shop Now",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                CustomButton(
                    label: "Login",
                    onPress: () {
                      openLoginModal(context);
                    },
                    size: Size(size.width, size.height * 0.06)), // Login Button
                const SizedBox(height: 50),
                Container(
                  //color: Colors.amber,
                  height: 30,
                  width: double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          //height: 10,
                          color: AppColors.greyDark,
                          thickness: 1,
                          indent: 30,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text("OR")),
                      Expanded(
                        child: Divider(
                          //height: 2,
                          color: AppColors.greyDark,
                          thickness: 1,
                          endIndent: 30,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Column(
                  children: [
                    Text(
                      "Sign In with",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          minRadius: 20,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage("assets/social_icons/google.png"),
                        ),
                        CircleAvatar(
                          minRadius: 20,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage("assets/social_icons/apple-logo.png"),
                        ),
                        CircleAvatar(
                          minRadius: 20,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage("assets/social_icons/facebook.png"),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
