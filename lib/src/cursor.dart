class Cursor {
  int x = 0, y = 0;
  int maxX = 0, maxY;

  Cursor(this.maxX, this.maxY);

  bool move(keyCode) {
    bool hasMove = true;
    switch (keyCode) {
      case 74:
        moveDown();
        break;
      case 75:
        moveUp();
        break;
      case 72:
        moveLeft();
        break;
      case 76:
        moveRight();
        break;
      default:
        hasMove = false;
        break;
    }
    return hasMove;
  }

  moveUp() {
    if(y > 0) {
      y -= 1;
    }
  }
  moveDown() {
    if(y < maxY) {
      y += 1;
    }
  }
  moveRight() {
    if(x < maxX) {
      x += 1;
    }
  }
  moveLeft() {
    if(x > 0) {
      x -= 1;
    }
  }
}