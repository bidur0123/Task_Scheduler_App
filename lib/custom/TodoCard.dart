import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key,
     required this.title,
     required this.iconData,
     required this.iconColor,
     required this.time,
     required this.check,
     required this.iconBgColor}) : super(key: key);

  final String    title;
  final IconData  iconData;
  final Color     iconColor;
  final String    time;
  final bool      check;
  final Color     iconBgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Theme(
            data: ThemeData(
              primarySwatch: Colors.blue,
              unselectedWidgetColor: const Color(0xff5e616a),
            ),
            child: Transform.scale(
              scale: 1.5,
              child: Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                  checkColor:const Color(0xff0e3e26) ,
                  activeColor: const Color(0xff6cf8a9),
                  value: check,
                  onChanged: (bool? value) {},
              ),
            ),
          ),
          Expanded(
              child: Container(
                height: 75,
              //  width: MediaQuery.of(context).size.width,
                child: Card(
                  color: const Color(0xff2a2e3d),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Container(
                        height: 33,
                        width: 36,
                        decoration: BoxDecoration(
                          color: iconBgColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(iconData , color: iconColor),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Text(
                            title,
                          style: const TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
