import 'package:everything/core/domain/cat/entity/cat.dart';
import 'package:everything/presentation/cat/list/cat_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatListPage extends StatefulWidget {
  const CatListPage({Key? key}) : super(key: key);

  @override
  _CatListPageState createState() => _CatListPageState();
}

class _CatListPageState extends State<CatListPage> {
  final _controller = Get.put(CatListController(Get.find()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('List of Cats'),
      ),
      body: GetX<CatListController>(builder: (controller) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Cat item = controller.cats[index];
            return SizedBox(
              height: 100,
              child: Text(item.race),
            );
          },
          itemCount: controller.cats.length,
        );
      }),
    );
  }
}
