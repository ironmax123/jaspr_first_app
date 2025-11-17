import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'homeClasses', [
      RowExample(),
      h2([text('Jaspr')]),
      p([text('pタグに変換される')]),
      div(
        styles: Styles(
          padding: Padding.symmetric(
            horizontal: 2.rem,
          ),
        ),
        [
          NavigationButton(),
        ],
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.homeClasses').styles(
      display: Display.flex,
      height: 50.vh,
      flexDirection: FlexDirection.column,
      justifyContent: JustifyContent.start,
      alignItems: AlignItems.center,
    ),
  ];
  @css
  static List<StyleRule> get buttonDesing => [
    css('.butttonDesing').styles(
      display: Display.block,
      width: 100.percent,
      padding: Padding.symmetric(vertical: 0.9.rem, horizontal: 1.5.rem),

      // 角丸（大きめにすると完全な pill になる）
      border: Border.none,

      // 文字
      radius: BorderRadius.circular(9999.px),
      cursor: Cursor.pointer,
      color: Colors.white,
      textAlign: TextAlign.center,

      // ボタンぽく
      fontSize: 1.rem,
      fontWeight: FontWeight.w600,

      // ここは生 CSS を使ってグラデーション＆影を付ける
      raw: {
        'background': 'linear-gradient(90deg, #62a2ff 0%, #67f0ff 100%)',
        'box-shadow': '0 10px 25px rgba(0, 0, 0, 0.18)',
      },
    ),
  ];
}

class NavigationButton extends StatelessComponent {
  const NavigationButton({super.key});

  @override
  Component build(BuildContext context) {
    return Link(
      to: '/settings',
      child: button(
        classes: 'butttonDesing',
        [
          text('Buttonになる'),
        ],
      ),
    );
  }
}

class RowExample extends StatelessComponent {
  const RowExample({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        display: Display.flex, // flexbox 有効化
        flexDirection: FlexDirection.row, // Row 相当
        justifyContent: JustifyContent.spaceBetween, // crossAxisAlignment.center
        alignItems: AlignItems.center, // mainAxisAlignment ぽい
      ),
      [
        div(styles: Styles(margin: Margin.only(right: 1.rem)), [text('Rowアイテム')]),
        div([
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
        ]),
      ],
    );
  }
}
