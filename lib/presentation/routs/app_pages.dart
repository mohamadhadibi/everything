import 'package:everything/presentation/cat/detail/cat_detail_bindings.dart';
import 'package:everything/presentation/cat/detail/cat_detail_page.dart';
import 'package:everything/presentation/cat/list/cat_list_bindings.dart';
import 'package:everything/presentation/cat/list/cat_list_page.dart';
import 'package:get/get.dart';

import '../cat/manipulation/cat_manipulation_bindings.dart';
import '../cat/manipulation/cat_manipulation_page.dart';
import '../home/home.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.catList,
      page: () => const CatListPage(),
      binding: CatListBindings(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.catDetail,
      page: () => const CatDetailPage(),
      binding: CatDetailBindings(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.catManipulation,
      page: () => const CatManipulationPage(),
      binding: CatManipulationBindings(),
      transition: Transition.leftToRight,
    ),
  ];
}
