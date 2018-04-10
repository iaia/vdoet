import 'package:angular/angular.dart';

import 'package:angular_app/src/boxes/boxes_component.dart';

@Component(
  selector: 'my-app',
  template: '''
  <boxes tabindex="1"><boxes>
  ''',
  styleUrls: const['app_component.css'],
  directives: const [CORE_DIRECTIVES, BoxesComponent],
)

class AppComponent {
  var test = "";
  AppComponent() {
    test = "";
  }
}