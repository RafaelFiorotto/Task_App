import 'package:flutter/material.dart';
import 'package:provider_test/pages/home/components/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Task Mananger',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leadingWidth: 60,
          leading: Container(
            margin: const EdgeInsets.only(left: 18, top: 8, bottom: 8),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: IconButton(
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.pages_sharp,
                  color: Colors.white,
                )),
          ),
        ),
        body: const HomeBody());
  }
}
