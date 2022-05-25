import 'package:flutter/material.dart';
import 'package:provider_test/pages/home/components/widgets/task_container_widget.dart';
import 'package:provider_test/pages/home/components/widgets/topics_container_widget.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final pageController = PageController(initialPage: 0, keepPage: true);
  int pageIndex = 0;
  bool container1Checked = false;
  bool container2Checked = false;
  bool container3Checked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome Back!',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          const Text(
            'Heres update today.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  child: TopicContainerWidget(
                    title: 'Today',
                    pageIndex: pageIndex,
                    page: 0,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  child: TopicContainerWidget(
                    title: 'Upcoming',
                    pageIndex: pageIndex,
                    page: 1,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  child: TopicContainerWidget(
                    title: 'Task done',
                    pageIndex: pageIndex,
                    page: 2,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                container1Checked = !container1Checked;
                              });
                            },
                            child: TaskContainerWidget(
                              containerChecked: container1Checked,
                              title: 'Update my workspace',
                              color: Colors.lime,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                container2Checked = !container2Checked;
                              });
                            },
                            child: TaskContainerWidget(
                              containerChecked: container2Checked,
                              title: 'Estudar provider no flutter',
                              color: Colors.amber,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                container3Checked = !container3Checked;
                              });
                            },
                            child: TaskContainerWidget(
                              containerChecked: container3Checked,
                              title:
                                  'Fazer update no sia, juntamente com o back, adicionar os filtros nas abas de laudo',
                              color: Colors.cyan,
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {},
                        child: Container(
                          height: 42,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Text(
                                  ' Add Task',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
