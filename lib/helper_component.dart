import 'package:angular/angular.dart';

@Component(
  selector: 'help',
  template: '''
    <ul>
      <li>h: move left
      <li>j: move down
      <li>l: move right
      <li>k: move up
      <li>x: change color to white(#ffffff)
      <li>i: edit color (insert mode)
      <li>v: change to visual mode (visual mode)
    </ul>
  ''',
  styleUrls: const['helper_component.css'],
  directives: const [CORE_DIRECTIVES],
)

class HelperComponent {
}