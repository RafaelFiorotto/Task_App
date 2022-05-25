import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  int colorNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit task',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        colorNumber = 0;
                      }),
                      child: ContainerCollorSelectorWidget(
                        color: Colors.amber,
                        isPressed: colorNumber == 0 ? true : false,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        colorNumber = 1;
                      }),
                      child: ContainerCollorSelectorWidget(
                        color: Colors.lime,
                        isPressed: colorNumber == 1 ? true : false,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        colorNumber = 2;
                      }),
                      child: ContainerCollorSelectorWidget(
                        color: Colors.cyan,
                        isPressed: colorNumber == 2 ? true : false,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        colorNumber = 3;
                      }),
                      child: ContainerCollorSelectorWidget(
                        color: Colors.purple,
                        isPressed: colorNumber == 3 ? true : false,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        colorNumber = 4;
                      }),
                      child: ContainerCollorSelectorWidget(
                        color: Colors.pink,
                        isPressed: colorNumber == 4 ? true : false,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        colorNumber = 5;
                      }),
                      child: ContainerCollorSelectorWidget(
                        color: Colors.orange,
                        isPressed: colorNumber == 5 ? true : false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  minLines: 1,
                  maxLines: 12,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    hintText: 'Text description here',
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w900),
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
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
                        Text(
                          'Save Task',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerCollorSelectorWidget extends StatelessWidget {
  const ContainerCollorSelectorWidget({
    Key? key,
    required this.color,
    required this.isPressed,
  }) : super(key: key);

  final Color color;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            color: isPressed ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
