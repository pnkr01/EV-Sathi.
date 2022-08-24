import 'package:flutter/material.dart';
import '../../../otp/newuser/newuserotp.dart';
import '../../../otp/olduserotp.dart';

//TODOS: if we have newUser True --->
//TODOS: 1. Save user info to firebase.
//TODOS: 2. Save locally also

//TODOS: if we have newUser False --->
//TODOS: 1. Retrieve user info from firebase.
//TODOS: 2. Save locally also.

class OTPScreen extends StatefulWidget {
  final String phonenumber;
  final bool isNewUser;
  // final String userName;
  static String routename = "/otpscreen";
  const OTPScreen({
    Key? key,
    //required this.userName,
    required this.phonenumber,
    required this.isNewUser,
  }) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  // TextEditingController otpController = TextEditingController();
  // TextEditingController emailController = TextEditingController();
  // TextEditingController firstController = TextEditingController();
  // TextEditingController secondController = TextEditingController();
  // String verificationIds = "";
  // String smsCodes = "";
  // // AuthClass authClass = AuthClass();
  // bool issend = false;
  // int start = 30;
  // void setTimer() {
  //   const onsec = Duration(seconds: 1);
  //   // ignore: unused_local_variable
  //   Timer timer = Timer.periodic(onsec, (timer) {
  //     if (start == 0) {
  //       setState(() {
  //         timer.cancel();
  //         issend = true;
  //       });
  //     } else {
  //       setState(() {
  //         start--;
  //       });
  //     }
  //   });
  // }

  // Future<void> setSms() async {
  //   if (otpController.text.isNotEmpty && otpController.text.length == 6) {
  //     setState(() {
  //       smsCode = otpController.text;
  //     });
  //   } else {
  //     // const ErrorDialog(
  //     //   message: "Wrong OTP",
  //     // );
  //     showDialog(
  //         context: context,
  //         builder: (context) {
  //           return const ErrorDialog(
  //             message: "Wrong OTP",
  //           );
  //         });
  //   }
  // }

  @override
  void initState() {
    super.initState();
    //TODOS:1
    // !widget.isNewUser
    //     ? null
    //     : authClass.verifyPhoneNumber(
    //         "+91 ${widget.phonenumber}",
    //         context,
    //         setData,
    //       );
  }

  // Future<void> authenticate() async {
  //   //TODOS: TEST VALUE NULL..
  //   await authClass
  //       .signInWithPhoneNumber(
  //     verificationIds,
  //     smsCodes,
  //     context,
  //     // widget.userName,
  //     widget.phonenumber,
  //   )
  //       .then((value) {
  //     if (value != null) {
  //       setDataAndSaveLocally();
  //     } else {
  //       Navigator.pop(context);
  //       showSnackBar(context, "Wrong OTP Entered");
  //     }
  //   });
  //   setState(() {
  //     start = 0;
  //   });
  //   //TODOS: 1. Save user info from firebase.
  //   //TODOS: 2. Save locally also
  // }

  //TODOS: SET DATA FROM FIREBASE AND STORING IN SP. AS USER IS NOT RESGISTERED.

  // Future<void> setDataAndSaveLocally() async {
  //   await FirebaseFirestore.instance
  //       .collection("phone")
  //       .doc(widget.phonenumber)
  //       .set(
  //         ({
  //           "userEmail": emailController.text.trim(),
  //           "fullName": firstController.text.trim() +
  //               " " +
  //               secondController.text.trim(),
  //           "phoneNumber": widget.phonenumber,
  //         }),
  //       );

  //   SharedPreferences? sharedPreferences =
  //       await SharedPreferences.getInstance();
  //   await sharedPreferences.setString("email", emailController.text.trim());
  //   await sharedPreferences.setString(
  //       "name", firstController.text.trim() + secondController.text.trim());
  //   await sharedPreferences.setString("phoneNumber", widget.phonenumber);
  //   Navigator.pop(context);
  //   Navigator.pushAndRemoveUntil(
  //     context,
  //     MaterialPageRoute(builder: (context) => const DashBoard()),
  //     (route) => false,
  //   );
  //   showSnackBar(context, "LoggedIn Sucessfully");
  //   // }
  // }

  //TODOS: Get DATA FROM FIREBASE AND STORING IN SP. AS USER IS ALREADY RESGISTERED.

  // Future<void> getDataAndSaveLocally() async {
  //   await FirebaseFirestore.instance
  //       .collection("phone")
  //       .doc(widget.phonenumber)
  //       .get()
  //       .then((snap) async {
  //     // await  sharedPreferences!.setString("uid", currentUser.uid);
  //     await sharedPreferences!.setString("email", snap.data()!["userEmail"]);
  //     await sharedPreferences!.setString("name", snap.data()!["fullName"]);
  //     await sharedPreferences!.setString("phone", snap.data()!["phoneNumber"]);
  //     Navigator.pop(context);
  //     Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(builder: (context) => const DashBoard()),
  //         (route) => false);
  //     showSnackBar(context, "LoggedIn Sucessfully");
  //   });
  // }

  // Future<void> authenticate1() async {
  //   await authClass
  //       .signInWithPhoneNumber(
  //     verificationId,
  //     smsCode,
  //     context,
  //     // widget.userName,
  //     widget.phonenumber,
  //   )
  //       .then(((value) {
  //     getDataAndSaveLocally();
  //   }));
  //   setState(() {
  //     start = 0;
  //   });
  //   //TODOS: 1. Retrieve user info from firebase.
  //   //TODOS: 2. Save locally also
  //   // fetchDataAndSaveLocally();
  // }

  // Future<void> fetchDataAndSaveLocally() async
  // {
  //    await FirebaseFirestore.instance.collection("phone")
  // }

  // void validateform() async {
  //   if (emailController.text.isNotEmpty &&
  //       firstController.text.isNotEmpty &&
  //       secondController.text.isNotEmpty) {
  //     if (otpController.text.length == 6) {
  //       setState(() {
  //         smsCodes = otpController.text;
  //       });
  //       showDialog(
  //           context: context,
  //           builder: (context) {
  //             return const LoadingDialog(
  //               message: "",
  //             );
  //           });
  //       await authenticate();
  //     } else {
  //       showDialog(
  //           context: context,
  //           builder: (context) {
  //             return const ErrorDialog(
  //               message: "OTP is of 6 digits.",
  //             );
  //           });
  //     }
  //   } else {
  //     showDialog(
  //         context: context,
  //         builder: (context) {
  //           return const ErrorDialog(
  //             message: "Fill all blanks",
  //           );
  //         });
  //   }
  // }

  // void validateform1() async {
  //   if (otpController1.text.isNotEmpty && otpController1.text.length == 6) {
  //     setState(() {
  //       smsCode = otpController1.text;
  //     });
  //     showDialog(
  //         context: context,
  //         builder: (context) {
  //           return const LoadingDialog(
  //             message: "",
  //           );
  //         });
  //     await authenticate1();
  //   } else {
  //     showDialog(
  //         context: context,
  //         builder: (context) {
  //           return const ErrorDialog(
  //             message: "OTP is of 6 digits.",
  //           );
  //         });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF091637),
      body: !widget.isNewUser
          ? OldUserOTPScreen(
              phone: widget.phonenumber,
            )
          // ? SingleChildScrollView(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const SizedBox(
          //           height: 50,
          //         ),
          //         IconButton(
          //           onPressed: () {
          //             Navigator.pop(context);
          //           },
          //           icon: const Icon(
          //             Icons.arrow_back,
          //             size: 27,
          //           ),
          //           color: Colors.white54,
          //         ),
          //         // const SizedBox(
          //         //   height: 150.0,
          //         // ),
          //         Padding(
          //           padding: const EdgeInsets.only(left: 20),
          //           child: Text("Sign In",
          //               style: GoogleFonts.raleway(
          //                   color: Colors.white,
          //                   fontSize: 25,
          //                   fontWeight: FontWeight.w700)
          //               // TextStyle(
          //               // color: Colors.white,
          //               // fontSize: 25,
          //               //   fontFamily: "VarelaRound"
          //               // ),
          //               ),
          //         ),
          //         const Divider(
          //           color: Colors.grey,
          //           thickness: 0.1,
          //         ),
          //         Container(
          //           padding: const EdgeInsets.all(8.0),
          //           margin: const EdgeInsets.all(8.0),
          //           decoration: const BoxDecoration(
          //             color: Colors.transparent,
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(10.0),
          //             ),
          //           ),
          //           child: TextFormField(
          //             // lalebText: "OTP",
          //             // textInputType: TextInputType.phone,
          //             // hintText: "",
          //             // hintTextcolor: Colors.white,
          //             // icocolor: Colors.white,
          //             // icon: Icons.pin,
          //             // length: 6,
          //             // width: MediaQuery.of(context).size.width,
          //             // fieldWidth: 50,
          //             // otpFieldStyle: OtpFieldStyle(
          //             //   backgroundColor: const Color(0xFF1d1d1d),
          //             //   borderColor: Colors.white,
          //             // ),
          //             // style: const TextStyle(
          //             //   fontSize: 20.0,
          //             //   color: Colors.white,
          //             // ),
          //             controller: otpController1,
          //             enabled: true,
          //             keyboardType: TextInputType.number,
          //             obscureText: false,
          //             autofocus: true,
          //             style: const TextStyle(color: Colors.green),
          //             cursorColor: Theme.of(context).primaryColor,
          //             decoration: InputDecoration(
          //               contentPadding: const EdgeInsets.all(25.0),
          //               labelText: "OTP",
          //               labelStyle: const TextStyle(color: Colors.white),
          //               //border: const OutlineInputBorder()
          //               //   borderSide: BorderSide(
          //               //     color: Colors.black,

          //               //   ),
          //               //   borderRadius: BorderRadius.all(
          //               //     Radius.circular(5.0),
          //               //   ),
          //               // ),
          //               enabledBorder: OutlineInputBorder(
          //                 borderSide:
          //                     const BorderSide(color: Colors.white, width: 2.0),
          //                 borderRadius: BorderRadius.circular(25.0),
          //               ),
          //               fillColor: Colors.white,
          //               prefixIcon: const Icon(
          //                 Icons.pin,
          //                 color: Colors.white,
          //               ),
          //               // focusColor: Theme.of(context).primaryColor,
          //               hintText: "",
          //               hintStyle: const TextStyle(color: Colors.white),
          //             ),
          //             // outlineBorderRadius: 20.0,
          //             // textFieldAlignment: MainAxisAlignment.spaceAround,
          //             // fieldStyle: FieldStyle.box,
          //             // onCompleted: (pin) {
          //             //   print(pin);
          //             //   setState(() {
          //             //     smsCode = pin;
          //             //   });
          //             // },
          //           ),
          //         ),
          //         const SizedBox(
          //           height: 20.0,
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          //           child: Container(
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(20.0),
          //               color: Colors.blue,
          //             ),
          //             width: MediaQuery.of(context).size.width,
          //             child: TextButton(
          //               onPressed: () async {
          //                 //TODOS:  2
          //                 validateform1();
          //                 // showDialog(
          //                 //     context: context,
          //                 //     builder: (context) {
          //                 //       return const LoadingDialog(
          //                 //         message: "",
          //                 //       );
          //                 //     });
          //                 // validateform();
          //                 // await setSms();
          //                 // authClass.signInWithPhoneNumber(
          //                 //   verificationId,
          //                 //   smsCode,
          //                 //   context,
          //                 //   // widget.userName,
          //                 //   widget.phonenumber,
          //                 // );
          //                 // setState(() {
          //                 //   start = 0;
          //                 // });
          //                 // ignore: avoid_print
          //                 print("otp area");
          //                 //print(widget.userName);

          //                 //TODOS: check is otp correct or wrong, if correct send to dashboard
          //                 //TODOS: OTHERWISE POPUP WRONG OTP.
          //               },
          //               child: const Text(
          //                 "Continue",
          //                 style: TextStyle(color: Colors.white),
          //               ),
          //             ),
          //           ),
          //         ),
          //         const SizedBox(
          //           height: 20.0,
          //         ),
          //         Center(
          //           child: RichText(
          //               text: TextSpan(
          //             children: [
          //               TextSpan(
          //                 recognizer: TapGestureRecognizer()
          //                   ..onTap = () {
          //                     issend
          //                         ? {
          //                             //resend otp
          //                             authClass.signInWithPhoneNumber(
          //                               verificationId,
          //                               smsCode,
          //                               context,
          //                               // widget.userName,
          //                               widget.phonenumber,
          //                             ),
          //                             // ignore: avoid_print
          //                             print("resend otp"),
          //                             start = 30,
          //                             issend = false,
          //                             setState(() {
          //                               setTimer();
          //                             }),
          //                           }
          //                         : {
          //                             const SnackBar(
          //                               content:
          //                                   Text("Please wait until timer"),
          //                             ),
          //                              // ignore: avoid_print
          //                             print("Please wait until timer"),
          //                           };
          //                   },
          //                 text: "Resend OTP",
          //                 style: TextStyle(
          //                   fontSize: 18.0,
          //                   color: issend ? Colors.blue : Colors.grey,
          //                 ),
          //               ),
          //               const TextSpan(
          //                 text: " in",
          //                 style: TextStyle(
          //                   fontSize: 18.0,
          //                   color: Colors.white,
          //                 ),
          //               ),
          //               TextSpan(
          //                 text: " 00:$start",
          //                 style: const TextStyle(
          //                   fontSize: 20.0,
          //                   color: Colors.pink,
          //                 ),
          //               ),
          //               const TextSpan(
          //                 text: " sec",
          //                 style: TextStyle(
          //                   fontSize: 18.0,
          //                   color: Colors.white,
          //                 ),
          //               ),
          //             ],
          //           )),
          //         )
          //       ],
          //     ),
          //   )

          //TODOS : CREATE ACCOUNT, IF USER IS NEW..

          : NewUserOTPScreen(
              phone: widget.phonenumber,
            ),

      // : SingleChildScrollView(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         const SizedBox(
      //           height: 50,
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           icon: const Icon(
      //             Icons.arrow_back,
      //             size: 27,
      //           ),
      //           color: Colors.white54,
      //         ),
      //         // const SizedBox(
      //         //   height: 150.0,
      //         // ),
      //         Padding(
      //           padding: const EdgeInsets.only(left: 20),
      //           child: Text("Create Account",
      //               style: GoogleFonts.raleway(
      //                   color: Colors.white,
      //                   fontSize: 25,
      //                   fontWeight: FontWeight.w700)
      //               // TextStyle(
      //               // color: Colors.white,
      //               // fontSize: 25,
      //               //   fontFamily: "VarelaRound"
      //               // ),
      //               ),
      //         ),
      //         const Divider(
      //           color: Colors.grey,
      //           thickness: 0.1,
      //         ),
      //         CustomTextField(
      //           //maxlength: 50,
      //           icocolor: Colors.white,
      //           hintTextcolor: Colors.white,
      //           lalebText: "Email",
      //           controller: emailController,
      //           textInputType: TextInputType.emailAddress,
      //           hintText: "",
      //           icon: Icons.email,
      //         ),
      //         CustomTextField(
      //           //maxlength: 10,
      //           icocolor: Colors.white,
      //           hintTextcolor: Colors.white,
      //           lalebText: "First Name",
      //           controller: firstController,
      //           textInputType: TextInputType.name,
      //           hintText: "",
      //           icon: Icons.person,
      //         ),
      //         CustomTextField(
      //           // maxlength: 10,
      //           icocolor: Colors.white,
      //           hintTextcolor: Colors.white,
      //           lalebText: "Last Name",
      //           controller: secondController,
      //           textInputType: TextInputType.emailAddress,
      //           hintText: "",
      //           icon: Icons.person,
      //         ),
      //         // const SizedBox(
      //         //   height: 20.0,
      //         // ),
      //         Container(
      //           padding: const EdgeInsets.all(8.0),
      //           margin: const EdgeInsets.all(8.0),
      //           decoration: const BoxDecoration(
      //             color: Colors.transparent,
      //             borderRadius: BorderRadius.all(
      //               Radius.circular(10.0),
      //             ),
      //           ),
      //           child: TextFormField(
      //             // lalebText: "OTP",
      //             // textInputType: TextInputType.phone,
      //             // hintText: "",
      //             // hintTextcolor: Colors.white,
      //             // icocolor: Colors.white,
      //             // icon: Icons.pin,
      //             // length: 6,
      //             // width: MediaQuery.of(context).size.width,
      //             // fieldWidth: 50,
      //             // otpFieldStyle: OtpFieldStyle(
      //             //   backgroundColor: const Color(0xFF1d1d1d),
      //             //   borderColor: Colors.white,
      //             // ),
      //             // style: const TextStyle(
      //             //   fontSize: 20.0,
      //             //   color: Colors.white,
      //             // ),
      //             controller: otpController,
      //             enabled: true,
      //             keyboardType: TextInputType.number,
      //             obscureText: false,
      //             autofocus: true,
      //             style: const TextStyle(color: Colors.green),
      //             cursorColor: Theme.of(context).primaryColor,
      //             decoration: InputDecoration(
      //               contentPadding: const EdgeInsets.all(25.0),
      //               labelText: "OTP",
      //               labelStyle: const TextStyle(color: Colors.white),
      //               //border: const OutlineInputBorder()
      //               //   borderSide: BorderSide(
      //               //     color: Colors.black,

      //               //   ),
      //               //   borderRadius: BorderRadius.all(
      //               //     Radius.circular(5.0),
      //               //   ),
      //               // ),
      //               enabledBorder: OutlineInputBorder(
      //                 borderSide:
      //                     const BorderSide(color: Colors.white, width: 2.0),
      //                 borderRadius: BorderRadius.circular(25.0),
      //               ),
      //               fillColor: Colors.white,
      //               prefixIcon: const Icon(
      //                 Icons.pin,
      //                 color: Colors.white,
      //               ),
      //               // focusColor: Theme.of(context).primaryColor,
      //               hintText: "",
      //               hintStyle: const TextStyle(color: Colors.white),
      //             ),
      //             // outlineBorderRadius: 20.0,
      //             // textFieldAlignment: MainAxisAlignment.spaceAround,
      //             // fieldStyle: FieldStyle.box,
      //             // onCompleted: (pin) {
      //             //   print(pin);
      //             //   setState(() {
      //             //     smsCode = pin;
      //             //   });
      //             //   //TODOS: check is otp correct or wrong,
      //             // },
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 20.0,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      //           child: Container(
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20.0),
      //               color: Colors.blue,
      //             ),
      //             width: MediaQuery.of(context).size.width,
      //             child: TextButton(
      //               onPressed: () async {
      //                 //TODOS:  2
      //                 validateform();
      //                 // showDialog(
      //                 //     context: context,
      //                 //     builder: (context) {
      //                 //       return const LoadingDialog(
      //                 //         message: "",
      //                 //       );
      //                 //     });
      //                 // validateform();
      //                 // await setSms();
      //                 // authClass.signInWithPhoneNumber(
      //                 //   verificationId,
      //                 //   smsCode,
      //                 //   context,
      //                 //   // widget.userName,
      //                 //   widget.phonenumber,
      //                 // );
      //                 // setState(() {
      //                 //   start = 0;
      //                 // });
      //                 // ignore: avoid_print
      //                 print("otp area");
      //                 //print(widget.userName);

      //                 //TODOS: check is otp correct or wrong, if correct send to dashboard
      //                 //TODOS: OTHERWISE POPUP WRONG OTP.
      //               },
      //               child: const Text(
      //                 "Continue",
      //                 style: TextStyle(color: Colors.white),
      //               ),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 20.0,
      //         ),
      //         Center(
      //           child: RichText(
      //               text: TextSpan(
      //             children: [
      //               TextSpan(
      //                 recognizer: TapGestureRecognizer()
      //                   ..onTap = () {
      //                     issend
      //                         ? {
      //                             //resend otp
      //                             authClass.signInWithPhoneNumber(
      //                               verificationIds,
      //                               smsCodes,
      //                               context,
      //                               // widget.userName,
      //                               widget.phonenumber,
      //                             ),
      //                             // ignore: avoid_print
      //                             print("resend otp"),
      //                             start = 30,
      //                             issend = false,
      //                             setTimer(),
      //                           }
      //                         : {
      //                             const SnackBar(
      //                               content:
      //                                   Text("Please wait until timer"),
      //                             ),
      //                             // ignore: avoid_print
      //                             print("Please wait until timer"),
      //                           };
      //                   },
      //                 text: "Resend OTP",
      //                 style: TextStyle(
      //                   fontSize: 18.0,
      //                   color: issend ? Colors.blue : Colors.grey,
      //                 ),
      //               ),
      //               const TextSpan(
      //                 text: " in",
      //                 style: TextStyle(
      //                   fontSize: 18.0,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //               TextSpan(
      //                 text: " 00:$start",
      //                 style: const TextStyle(
      //                   fontSize: 20.0,
      //                   color: Colors.pink,
      //                 ),
      //               ),
      //               const TextSpan(
      //                 text: " sec",
      //                 style: TextStyle(
      //                   fontSize: 18.0,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ],
      //           )),
      //         )
      //       ],
      //     ),
      //   ),
    );
  }

  // void setData(String verificationsId) {
  //   setState(() {
  //     verificationIds = verificationsId;
  //   });
  //   setTimer();
  // }
}
