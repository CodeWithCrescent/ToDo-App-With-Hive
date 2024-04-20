import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:todo_hive/pages/all_tasks_page.dart';
import 'package:todo_hive/utils/colors.dart';
import 'package:todo_hive/widgets/create_task_button.dart';
import 'package:todo_hive/widgets/todo_tile_lists.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      appBar: AppBar(
        title: const Text('TO DO'),
      ),
      floatingActionButton: const CreateTaskButton(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'Hey, Crescent!',
                  style: TextStyle(
                    color: GlobalColors.blackColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                focusColor: GlobalColors.mainColor,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search here',
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 175,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    width: 175,
                    decoration: BoxDecoration(
                      color: GlobalColors.mainColor,
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(right: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: GlobalColors.bgColor.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.rocket_launch,
                                  color: GlobalColors.whiteColor,
                                ),
                              ),
                              CircularPercentIndicator(
                                radius: 27.0,
                                lineWidth: 7.0,
                                animation: true,
                                percent: 0.7,
                                center: Text(
                                  "70%",
                                  style: TextStyle(
                                    color: GlobalColors.whiteTextColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: GlobalColors.whiteColor,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Class Tasks',
                                style: TextStyle(
                                  color: GlobalColors.whiteTextColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: GlobalColors.whiteTextColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tasks",
                  style: TextStyle(
                    color: GlobalColors.blackColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AllTasks(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(
                          color: GlobalColors.mutedColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 3),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: GlobalColors.mutedColor,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Expanded(
              child: ToDoTileLists(),
            ),
          ],
        ),
      ),
    );
  }
}
