import 'dart:html';

DivElement touchEvents;

onTouchCancel(TouchEvent event) {
  print("onTouchCancel: ${event.toString()}");
  StringBuffer sb = new StringBuffer();
  TouchList touches = event.touches;
  if (touches != null) {
    sb.write("onTouchCancel: ");
    sb.write("touches.length ${touches.length}");
    if (touches.length > 0) {
      Touch touch = touches.first;
      sb.write("page.x = ${touch.page.x}, page.y = ${touch.page.y}");
    }
  }

  touchEvents.innerHtml = "${touchEvents.innerHtml} ${sb.toString()} <br/>";
}

onTouchEnd(TouchEvent event) {
  print("onTouchEnd: ${event.toString()}");
  StringBuffer sb = new StringBuffer();
  TouchList touches = event.touches;
  if (touches != null) {
    sb.write("onTouchEnd: ");
    sb.write("touches.length ${touches.length}");
    if (touches.length > 0) {
      Touch touch = touches.first;
      sb.write("page.x = ${touch.page.x}, page.y = ${touch.page.y}");
    }
  }

  touchEvents.innerHtml = "${touchEvents.innerHtml} ${sb.toString()} <br/>";
}

onTouchMove(TouchEvent event) {
  print("onTouchMove: ${event.toString()}");
  StringBuffer sb = new StringBuffer();
  TouchList touches = event.touches;
  if (touches != null) {
    sb.write("onTouchMove: ");
    sb.write("touches.length ${touches.length}");
    if (touches.length > 0) {
      Touch touch = touches.first;
      sb.write("page.x = ${touch.page.x}, page.y = ${touch.page.y}");
    }
  }

  touchEvents.innerHtml = "${touchEvents.innerHtml} ${sb.toString()} <br/>";
}

onTouchStart(TouchEvent event) {
  print("onTouchStart: ${event.toString()}");
  StringBuffer sb = new StringBuffer();
  TouchList touches = event.touches;
  if (touches != null) {
    sb.write("onTouchStart: ");
    sb.write("touches.length ${touches.length}");
    if (touches.length > 0) {
      Touch touch = touches.first;
      sb.write("page.x = ${touch.page.x}, page.y = ${touch.page.y}");
    }
  }

  touchEvents.innerHtml = "${touchEvents.innerHtml} ${sb.toString()} <br/>";
}

void main() {
  touchEvents = query("#touchEvents");
  print(touchEvents);
  window.onTouchCancel.listen(onTouchCancel);
  window.onTouchEnd.listen(onTouchEnd);
  window.onTouchMove.listen(onTouchMove);
  window.onTouchStart.listen(onTouchMove);
}
