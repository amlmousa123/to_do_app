import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/screens/board_screen.dart';
import 'package:intl/intl.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0,50,0,30),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(children: [
                  WidgetSpan(child: IconButton(onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => BoardScreen()),
                    );
                  },
                      icon :Icon(Icons.arrow_back_ios),),),
                  WidgetSpan(child: SizedBox(width: 20,)),
                  TextSpan(
                    text: "Schedule",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ),
            Divider(
              height: 10,
            ),
            Container(
              child: DatePicker(
                DateTime.now(),
                height: 80,
                width: 60,
                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.green,
                selectedTextColor: Colors.white,
                dateTextStyle: TextStyle(
                  fontWeight: FontWeight.w400
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
