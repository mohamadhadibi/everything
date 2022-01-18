import 'package:everything/presentation/cat/detail/cat_detail_bindings.dart';
import 'package:everything/presentation/cat/detail/cat_detail_page.dart';
import 'package:get/get.dart';

import '../home.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    /* GetPage(
      name: Routes.catList,
      page: () => const CatListPage(),
      binding: CatListBindings(),
      transition: Transition.leftToRight,
    ),*/
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
  ];
}
