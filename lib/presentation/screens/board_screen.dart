import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/screens/add_task_screen.dart';
import 'package:to_do_app/presentation/screens/schedule_screen.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Board",
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => ScheduleScreen()),
                );
              },
              icon: Icon(
                Icons.calendar_month_rounded,
                color: Colors.black54,
              ),
            )
          ],
        ),
        body: DefaultTabController(
          length: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: .6,
                  color: Colors.grey[500],
                ),
                TabBar(
                  tabs: [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Completed',
                    ),
                    Tab(
                      text: 'Uncompleted',
                    ),
                    Tab(
                      text: 'Favorite',
                    )
                  ],
                  unselectedLabelColor: Colors.black26,
                  indicatorColor: Colors.black,
                ),
                Container(
                  width: double.infinity,
                  height: .6,
                  color: Colors.grey[500],
                ),
                Expanded(
                  child: TabBarView(children: [
                    Center(child: Text('A')),
                    Center(child: Text('B')),
                    Center(child: Text('C')),
                    Center(child: Text('D')),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AddTaskScreen()));
                    },
                    child: Text(
                      'Add a task',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
