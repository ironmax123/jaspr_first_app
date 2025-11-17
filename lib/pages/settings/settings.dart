import 'package:jaspr/jaspr.dart';

class Settings extends StatelessComponent {
  const Settings({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'settingsClasses', [
      h2([text('Jaspr')]),
      p([text('pタグに変換される')]),
      div(
        styles: Styles(
          padding: Padding.symmetric(
            horizontal: 2.rem,
          ),
        ),
        [
          button(
            classes: 'butttonDesing',
            onClick: () {
              // Example button action
              print('Button clicked!');
            },
            [
              text(
                'Buttonになる',
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}
