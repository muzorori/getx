import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/visitsController.dart';

import '../widgets/visitsGridView.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    VisitsController visitsController = Get.put(VisitsController());


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text("Date"),
                Text("Bill Location"),
                Text("Ep Num"),
                Text("Ptient"),
                Text("Suffix"),
                Text("Description"),
              ],
            ),
            GetBuilder<VisitsController>(
                init: VisitsController(),
                builder: (_) {
                  return Container(
                    height: MediaQuery.of(context).size.height/1.5,
                    child: VisitsGridView(
                      visits: visitsController.visits,
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
