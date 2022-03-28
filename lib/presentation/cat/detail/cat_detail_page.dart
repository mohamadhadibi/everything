import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cat_detail_controller.dart';

class CatDetailPage extends StatefulWidget {
  const CatDetailPage({Key? key}) : super(key: key);

  @override
  _CatDetailPageState createState() => _CatDetailPageState();
}

class _CatDetailPageState extends State<CatDetailPage> {
  final controller = Get.find<CatDetailController>();

  @override
  void initState() {
    controller.getCatDetail(Get.parameters['id'] ?? "0");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CatDetailController>(builder: (controller) {
        return Center(
          child: Container(
            color: Colors.orange,
            height: 100,
            child: Container(
              height: 80,
              margin: const EdgeInsets.all(4),
              child: Center(
                child: Text(controller.cat?.race ?? "nulles"),
              ),
            ),
          ),
        );
      }),
    );
  }
}
