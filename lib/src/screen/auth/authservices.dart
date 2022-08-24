import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthClass {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //TODOS: Area of Verifying

  Future<void> verifyPhoneNumber(
    String phoneNumber,
    BuildContext context,
    Function setData,
  ) async {
    try {
      // ignore: prefer_function_declarations_over_variables
      PhoneVerificationCompleted phoneVerificationCompleted =
          (PhoneAuthCredential phoneAuthCredential) async {
        //showSnackBar(context, "Verification Completed");
        String s = phoneAuthCredential.token.toString();
        // ignore: avoid_print
        print(s);
      };
      // ignore: unused_local_variable, prefer_function_declarations_over_variables
      PhoneVerificationFailed phoneVerificationFailed =
          (FirebaseAuthException authException) {
        showSnackBar(context, authException.toString());
      };
      // ignore: prefer_function_declarations_over_variables
      PhoneCodeSent codeSent = (verificationId, forceResendingToken) async {
        showSnackBar(context, "Verification Code Sent Sucessfully");
        setData(verificationId);
      };
      // ignore: prefer_function_declarations_over_variables
      PhoneCodeAutoRetrievalTimeout phoneCodeAutoRetrievalTimeout =
          (verificationId) {
       // showSnackBar(context, "OTP must have arrived");
      };
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: phoneVerificationCompleted,
        verificationFailed: phoneVerificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: phoneCodeAutoRetrievalTimeout,
      );
      // ignore: empty_catches
    } catch (e) {
      print("here");
      showSnackBar(context, e.toString());
    }
  }

  //TODOS: Area of SigningIn

  Future<dynamic> signInWithPhoneNumber(
    String verificationId,
    String smsCode,
    BuildContext context,
    // String userName,
    String phonenumber,
  ) async {
    try {
      AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      // print(credential);
      return await _auth.signInWithCredential(credential);
    } catch (e) {
      //showSnackBar(context, "Wrong OTP entered");
    }

    return null;

    // try {

    //   // ignore: avoid_print
    //   // print(userCredential.additionalUserInfo!.isNewUser);

    //   // await saveToLocal(userCredential).then((value) {
    //   //   Navigator.pushAndRemoveUntil(
    //   //       context,
    //   //       MaterialPageRoute(builder: (context) => const DashBoard()),
    //   //       (route) => false);
    //   //   showSnackBar(context, "LoggedIn Sucessfully");
    //   // });
    // } catch (e) {
    //   showSnackBar(context, e.toString());
    // }
  }

  void showSnackBar(BuildContext context, String text) {
    final snakbar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snakbar);
  }

  //TODOS:Saving Area

  // Future<void> saveToLocal(UserCredential usersCred) async {
  //   // SharedPreferences? sharedPreferences =
  //   //     await SharedPreferences.getInstance();
  //   // await sharedPreferences.setBool(
  //   //   "isNewUser",
  //   //   usersCred.additionalUserInfo!.isNewUser,
  //   // );
  //   // await sharedPref.setString(key, value)
  // }

  // void saveToSharedpref(
  //   String name,
  //   String no,
  //   UserCredential credential,
  // ) async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setString("name", name);
  //   sharedPreferences.setString("phone", no);
  //   print("Saved sucessfully to sp");
  // }

  // await saveDataToFirestore(
  //     userCredential.user!,
  //     //userName,
  //     phonenumber,
  //     );

  // Future saveDataToFirestore(
  //     User currentUser,
  //     String phonenumber) async {
  //   print("saving data to firebase");

  //   FirebaseFirestore.instance.collection("User").doc(currentUser.uid).set(
  //         ({
  //           "UserUid": currentUser.uid,
  //           "phone": phonenumber,
  //         }),
  //       );
  // }
}















  // void storeTokenAndData(UserCredential userCredential) async {
  //   // ignore: avoid_print
  //   print("Storing user token and data");
  //   await storage.write(
  //       key: "token", value: userCredential.credential!.token.toString());
  //   await storage.write(
  //       key: "usercredential", value: userCredential.toString());
  //   await storage.write(
  //     key: "usercredential",
  //     value: userCredential.additionalUserInfo!.username.toString(),
  //   );
  // }















    //save data locally also.
    // print("Saving data locally");
    // SharedPreferences? sharedPreferences =
    //     await SharedPreferences.getInstance();
    // await sharedPreferences.setString("uid", currentUser.uid);
    // print("shared uid" + sharedPreferences.getString("uid")!);
    // await sharedPreferences.setString("name", name);
    // print("shared name" + sharedPreferences.getString("name")!);
    // // ignore: unnecessary_brace_in_string_interps
    // await sharedPreferences.setString("phone", "+91 ${phonenumber}");
    // print("shared phone" + sharedPreferences.getString("phone")!);
    // await sharedPreferences.setString(
    //     "name", nameEditingController.text.trim());
    // await sharedPreferences.setString("email", currentUser.email.toString());
    // await sharedPreferences.setString("photourl", sellerimageurl);
    





          // ignore: unused_local_variable
      //  await _auth.signInWithCredential(credential).then((auth) {
      //   currentUser = auth.user;
      // }).catchError((e) {
      //   Navigator.pop(context);
      //   showDialog(
      //     context: context,
      //     builder: (c) {
      //       return ErrorDialog(
      //         message: e!.message.toString(),
      //       );
      //     },
      //   );
      // });
      // if (currentUser != null) {
      //   saveDataToFirestore(currentUser!, userName, phonenumber).then((value) {
      //     Route newRoute =
      //         MaterialPageRoute(builder: (context) => const DashBoard());
      //     Navigator.pushReplacement(context, newRoute);
      //   });
      // }