import 'package:ev_station/src/screen/mappage.dart';
import 'package:flutter/material.dart';
import '../../constants/global.dart';
import '../sidebar/drawer.dart';
import '../sidebar/components/top_header.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({
    Key? key,
  }) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  //bool? s = sharedPreferences!.getBool("isNewUser");

//TODOS: 1

  // requestPermission() async {
  //   await [
  //     Permission.location,
  //   ].request();
  //TODOS: handle permission related queriesif user denied.
  //}

  //TODOS: 1 end

  Future<void> getTokenId() async {
    await firebaseAuth.currentUser!.getIdToken().then((value) {
      //print(value);
      sharedPreferences!.setString("getTokenId", value);
      // print(sharedPreferences!.getString("getTokenId").toString());
      //  setState(() {});
    });
  }

  // showMyDialog() {
  //   return showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const myTextField();
  //     },
  //   );
  // }

  @override
  void initState() {
    super.initState();
    getTokenId();
    //TODOS: 2 start
    // requestPermission();
    //TODOS: 2 end
    // s == true ? createPopUpDialog(context) : null;
  }

  TextEditingController namecontroller = TextEditingController();

  // createPopUpDialog(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: const Text("Your name"),
  //           content: TextField(
  //             controller: namecontroller,
  //           ),
  //           actions: [
  //             MaterialButton(
  //               onPressed: () async {
  //                 Navigator.pop(context);
  //                 await sharedPreferences!.setBool("isNewUser", false);
  // setState(() {});
  //               },
  //               elevation: 5.0,
  //               child: const Text("Submit"),
  //             ),
  //           ],
  //         );
  //       });
  // }

  // ignore: unused_field
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    //print(s);
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      body: Stack(
        children: const [
          //TopHeader(),
          // MapPage(),
          Positioned.fill(
            child: MapPage(),
          ),
          // SideBar(),

          //ButtomNavRoute(),
          TopHeader(),
          //BottomCard(),
          //SideBar(),

          //TODOS:  30 MARCH 2022 -> ONCLICK CONTAINER ROUTE BUTTON WILL APPEAR.
          //TODOS: AND NEW STACKED POSITIONED WILL COME SHOWING ONLY DIS AND TIME CHECK IMAGE.
          //SideBar(),
          //alertbox to get
          //1.Name
          //2.email
          // FutureBuilder(
          //     future: Future.delayed(Duration.zero, () => showMyDialog()),
          //     builder: ((context, snapshot) {
          //       return const MapPage();
          //     }))
          // : Container(),
          // Positioned(
          //   child: Container(
          //     padding: const EdgeInsets.all(7),
          //     margin: const EdgeInsets.only(
          //         bottom: 10, top: 10, left: 20, right: 20),
          //     decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(50.0),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.black.withOpacity(0.3),
          //             blurRadius: 10,
          //             offset: Offset.zero,
          //           )
          //         ]),
          //     child: Row(
          //       children: [
          //         Container(
          //           width: 70,
          //           height: 70,
          //           decoration: BoxDecoration(
          //             //color: Colors.red,
          //             borderRadius: BorderRadius.circular(50),
          //             image: const DecorationImage(
          //               image: AssetImage("assets/images/mk.png"),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         ),
          //         const SizedBox(
          //           width: 5.0,
          //         ),
          //         Expanded(
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: const [
          //               Text(
          //                 "Pawan Kumar",
          //                 style: TextStyle(fontWeight: FontWeight.bold),
          //               ),
          //               Text(
          //                 "Jamshedpur",
          //                 style: TextStyle(
          //                   fontWeight: FontWeight.bold,
          //                   color: Colors.grey,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         const Icon(
          //           Icons.pin_drop,
          //           color: Colors.blue,
          //           size: 40,
          //         ),
          //         const SizedBox(
          //           width: 7,
          //         ),
          //       ],
          //     ),
          //   ),
          //   top: 40,
          //   left: 0,
          //   right: 0,
          // ),
        ],
      ),
      //  Column(
      //   children: [
      // const SizedBox(
      //   height: 50,
      // ),
      // Center(
      //   child: Text(sharedPreferences!.getString("getTokenId").toString()),
      // ),
      // Center(
      //   child: s! ? const Text("New User Welcome") : const Text("Old User"),
      // ),
      // Center(
      //   child: Center(
      //     child: TextButton(
      //       onPressed: () async{
      //        await firebaseAuth.signOut().then((value) {
      //           Navigator.pushReplacement(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const LogInCumSignUpScreen(),
      //             ),
      //           );
      //         });
      //       },
      //       child: const Text("Log Out"),
      //     ),
      //   ),
      // ),

      //   ],
      // ),
    );
  }
}
