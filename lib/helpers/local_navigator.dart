import 'package:flutter/widgets.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/routes/router.dart';
import 'package:flutter_web_dashboard/routes/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverviewPageRoute,
      onGenerateRoute: generateRoute,
    );
