import 'package:angular/core.dart';
import 'package:angular/di.dart';

@Component(
  selector: 'box',
  template: '''
    <div class="box" [class.focused]="box.focused" [style.background-color]="box.color">
    </div>
    ''',
  styleUrls: const ['box_component.css'],
)

class BoxComponent {
  @Input() Box box;
}

class Box {
  int x, y;
  String color;
  bool focused = false;

  Box(this.x, this.y, this.color);

  focus() {
    focused = true;
  }

  unsetFocus() {
    focused = false;
  }

  changeColor(keyCode) {
    color = keyAndColor(keyCode);
  }

  String keyAndColor(keyCode) {
    String color;
    switch(keyCode) {
      case 88: // x
        color = '#ffffff';
        break;
      default:
        color = '#ff0000';
        break;
    }
    return color;
  }
}