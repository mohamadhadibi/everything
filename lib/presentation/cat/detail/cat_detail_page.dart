import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cat_detail_controller.dart';

class CatDetailPage extends StatefulWidget {
  const CatDetailPage({Key? key}) : super(key: key);

  @override
  _CatDetailPageState createState() => _CatDetailPageState();
}

final controller = Get.put(CatDetailController(Get.find()));

class _CatDetailPageState extends State<CatDetailPage> {
  @override
  void initState() {
    controller.getCatDetail(Get.parameters['id'] ?? "0");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
