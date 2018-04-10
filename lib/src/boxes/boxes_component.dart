import 'package:angular/angular.dart';
import 'package:angular_app/src/box/box_component.dart';
import 'package:angular/core.dart';
import 'package:angular_app/src/cursor.dart';

@Component(
selector: 'boxes',
styleUrls: const['boxes_component.css'],
templateUrl: 'boxes_component.html',
directives: const [CORE_DIRECTIVES, BoxComponent],
)

class BoxesComponent implements OnInit {
  static int rowNum = 16;
  static int columnNum = 16;
  Cursor cursor = new Cursor(columnNum - 1, rowNum - 1);
  List<List<Box>> boxes = new List();

  @override
  ngOnInit() {
    for(int row = 0; row < rowNum; row++) {
      boxes.add(new List());
      for(int column = 0; column < columnNum; column++) {
        boxes[row].add(new Box(row, column, '#ffffff'));
      }
    }
    changeCurrentCursorPosition(0, 0);
  }

  @HostListener('keydown', const [r"$event"])
  onKeyUp(event) {
    int prevX = cursor.x;
    int prevY = cursor.y;
    if(cursor.move(event.keyCode)) {
      changeCurrentCursorPosition(prevX, prevY);
    } else {
      changeColor(event.keyCode);
    }
  }

  changeCurrentCursorPosition(int prevX, int prevY) {
    Box prevBox = boxes[prevY][prevX];
    prevBox.unsetFocus();
    Box box = currentBox();
    box.focus();
  }

  changeColor(int keyCode) {
    Box box = currentBox();
    box.changeColor(keyCode);
  }

  Box currentBox() {
    return boxes[cursor.y][cursor.x];
  }
}