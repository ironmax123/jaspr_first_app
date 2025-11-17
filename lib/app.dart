import 'package:first_page/pages/home.dart';
import 'package:first_page/pages/settings/settings.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  @override
  Component build(BuildContext context) {
    return Router(
      routes: [
        Route(
          path: '/',
          builder: (context, state) => const Home(),
        ),
        Route(
          path: '/settings',
          builder: (context, state) => const Settings(),
        ),
      ],
    );
  }
}
