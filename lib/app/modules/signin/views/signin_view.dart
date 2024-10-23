import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ynab/app/modules/signup/views/signup_view.dart';
import 'package:ynab/app/routes/app_pages.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Silahkan masuk untuk lanjut ke aplikasi',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(24, 125, 132, 141),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                        hintText: 'Email'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(24, 125, 132, 141),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    obscureText: true,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(16, 13, 16, 0),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Lupa Password?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFF7029),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.BOTTOMNAVIGATION);
                    },
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF33CC33),
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun? ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.off(SignupView());
                      },
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFF7029),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
