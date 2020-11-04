import 'package:flutter/material.dart';
import 'package:shrek_esir/src/pages/conversion_page/conversion_page.dart';
import 'package:shrek_esir/src/pages/info_page/info_page.dart';
import 'package:shrek_esir/src/pages/main_page/widgets/bottom_navigation.dart';

class TabNavigatorRoutes {
  static const String root = "/";
}

class TabNavigator extends StatelessWidget {
  const TabNavigator({Key key, this.navigatorKey, this.tabItem}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  void _push(BuildContext context, {String destinationPage}) {
    final routeBuilders = _routeBuilders(context);

    Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders['/$destinationPage'](context),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    if (tabItem == TabItem.info) {
      return {
        TabNavigatorRoutes.root: (context) => InfoPage(
          onPush: (destinationPage) => _push(context, destinationPage: destinationPage),
        ),
      };
    }

    return {
      TabNavigatorRoutes.root: (context) => ConversionPage(
        onPush: (destinationPage) => _push(context, destinationPage: destinationPage),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute<void>(
          builder: (context) => routeBuilders[routeSettings.name](context),
        );
      },
    );
  }
}