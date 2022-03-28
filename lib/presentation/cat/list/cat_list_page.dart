import 'package:everything/presentation/routs/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/domain/cat/entity/cat.dart';
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
              child: Text("No Cat :)"),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              CatModel? item = box.getAt(index);
              return ListTile(
                onTap: () => Get.toNamed(Routes.catDetail,
                    parameters: {"id": item?.id ?? ''}),
                title: Text('${item?.race}'),
                leading: IconButton(
                    onPressed: () => Get.toNamed(Routes.catManipulation,
                        arguments: {"cat": Cat(id: item!.id, race: item.race)}),
                    icon: const Icon(Icons.edit)),
                trailing: IconButton(
                    onPressed: () => box.deleteAt(index),
                    icon: const Icon(Icons.delete_forever)),
              );
            },
            itemCount: box.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.catManipulation, arguments: {}),
        child: const Icon(Icons.add),
      ),
    );
  }
}
