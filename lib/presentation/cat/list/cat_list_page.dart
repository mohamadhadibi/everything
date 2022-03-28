import 'package:everything/presentation/routs/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../data/cat/model/cat_model.dart';

class CatListPage extends StatefulWidget {
  const CatListPage({Key? key}) : super(key: key);

  @override
  _CatListPageState createState() => _CatListPageState();
}

class _CatListPageState extends State<CatListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('List of Cats'),
      ),
      body: ValueListenableBuilder(
        valueListenable: Hive.box<CatModel>("cats").listenable(),
        builder: (context, Box<CatModel> box, _) {
          if (box.values.isEmpty) {
            return const Center(
              child: Text("No contacts"),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              CatModel? item = box.getAt(index);
              return Card(
                child: InkWell(
                  onTap: () => Get.toNamed(Routes.catDetail,
                      parameters: {"id": item?.id ?? ''}),
                  child: SizedBox(
                    height: 100,
                    child: Center(child: Text('${item?.race}')),
                  ),
                ),
              );
            },
            itemCount: box.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.catManipulation),
        child: const Icon(Icons.add),
      ),
    );
  }
}
