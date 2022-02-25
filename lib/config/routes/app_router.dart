import 'package:cv_creator/presentation/view/home_page.dart';
import 'package:cv_creator/presentation/view/pdf_page.dart';

import 'package:auto_route/annotations.dart';
//part 'app_router.gr.dart';
// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: PdfPage),
  ],
)
class $AppRouter {}
