import 'package:flutter/material.dart';
import 'package:to_do_app/custom/TodoCard.dart';
import 'package:to_do_app/pages/add_Todo_Page.dart';

class Home extends StatefulWidget {
 const  Home({Key? key}) : super(key: key);
 // final titleController = TextEditingController();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    AddTodoPage(),
    AddTodoPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("Today Schedule's",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 34,
          ),
        ),
        actions:  const [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(35),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:  EdgeInsets.only(left: 22.0),
              child: Text("Monday 21",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 34,
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
       // type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.black87,
        items:  [
        const  BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32,
                color: Colors.white,
              ),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTodoPage()));
              },
              child: Container(
                height: 52,
                width: 52,
                decoration:const  BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [
                        Colors.indigoAccent,
                        Colors.purple,
                      ],
                  ),
                ),
                child:const Icon(
                  Icons.add,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ),
            label: 'Add'
          ),
        const  BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 32,
              color: Colors.white,
            ),
            label: 'Setting',
          ),
        ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children:  [
              TodoCard(
                title: "Wake up",
                iconData: Icons.audiotrack,
                iconColor: Colors.black87,
                iconBgColor: Colors.white,
                check: false,
                time: "10",
              ),
              SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }
}
