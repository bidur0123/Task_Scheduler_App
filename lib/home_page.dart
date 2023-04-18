import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1d1e26),
              Color(0xff252041),
            ],
            tileMode: TileMode.mirror
          )
        ),
        child: SingleChildScrollView(
          padding:const EdgeInsets.only(left: 15) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const   SizedBox(
                height: 40.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:const [
                    Text("Create",style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                      ),
                    ),
                    Text("Your Todo",style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              label("Task Title"),
              const SizedBox(height: 12.0),
              title(),
              const SizedBox(height: 12.0),
              label("Task Type"),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  chipData("Important", 0xff2664fa),
                  const SizedBox(width: 20.0),
                  chipData("Important", 0xff2bc8d9),
                ],
              ),
              const SizedBox(height: 12.0),
              label("Description"),
              const SizedBox(height: 20.0),
              description(),
              const SizedBox(height: 12.0),
              label("Category"),
              const SizedBox(height: 12.0),
              Wrap(
                runSpacing: 10,
                children: [
                  chipData('Food',0xffff6d6e ),
                  const SizedBox(width: 20.0),
                  chipData('Workout', 0xff58c490),
                  const SizedBox(width: 20.0),
                  chipData('Work',0xffe69045),
                  chipData('Design',0xff234ebd ),
                  const SizedBox(width: 20.0),
                  chipData('Run', 0xff82117e),
                ],
              ),
              // Row(
              //   children: [
              //     chipData('Food',0xffff6d6e ),
              //     const SizedBox(width: 20.0),
              //     chipData('Workout', 0xff58c490),
              //     const SizedBox(width: 20.0),
              //     chipData('Work',0xffe69045),
              //   ],
              // ),
              // const SizedBox(height: 20.0),
              // Row(
              //   children: [
              //     chipData('Design',0xff234ebd ),
              //     const SizedBox(width: 20.0),
              //     chipData('Run', 0xff82117e),
              //   ],
              // ),
              const SizedBox(
                height: 30.0,
              ),
              button(),
            ],
          ),
        ),
      ),
    );
  }
  Widget button(){
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width -30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: const LinearGradient(
              colors:  [
                Color(0xff8a32f1),
                Color(0xffad32f9)
              ]
          )
      ),
      child: const Center(
          child: Text("ADD Todo" ,
            style: TextStyle(
                color : Colors.white ,
                fontSize: 18.0 ,
                fontWeight: FontWeight.w600),
          )),
    );
  }
  Widget description (){
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width - 35,
      decoration: BoxDecoration(
        color: Color(0xff2a2e3d),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        maxLines: null,
        decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Description',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 17,
            ),
            contentPadding: EdgeInsets.only(left: 20.0 , right: 20.0)
        ),
      ),
    );
  }
  Widget title (){
    return Container(
      width: MediaQuery.of(context).size.width -35,
      decoration: BoxDecoration(
        color: Color(0xff2a2e3d),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Task Title',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          contentPadding: EdgeInsets.only(left: 20.0 , right: 20.0)
        ),
      ),
    );
  }
  Widget chipData ( String label , int color){
    return Chip(
      backgroundColor: Color(color),   //  0xffff6dde
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      label : Text(label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: 17.0 , vertical: 3.8),
    );
  }
  Widget label (String label){
    return Text(
         label ,
      style: const TextStyle(
          color: Colors.white ,
          fontSize: 18 ,
          fontWeight: FontWeight.bold),
    );
  }
}
