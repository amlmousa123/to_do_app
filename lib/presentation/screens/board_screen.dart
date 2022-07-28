import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/screens/schedule_screen.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0,50,0,30),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Board",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => ScheduleScreen()),
                          );
                        },
                        icon: Icon(Icons.schedule))
                  ],
                ),
              ),
              Divider(
                height: 10,
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
              Divider(
                height: 10,
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
                  onPressed: () {},
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
    );
  }
}
