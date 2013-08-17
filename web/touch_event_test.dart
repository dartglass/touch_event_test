import 'dart:html';

DivElement touchEvents;

onTouchCancel(TouchEvent event) {
  StringBuffer sb = new StringBuffer();
  TouchList touches = event.touches;
  if (touches != null) {
    sb.write("onTouchCancel: ");
    sb.write("touches.length ${touches.length} ");
    if (touches.length > 0) {
      Touch touch = touches.first;
      sb.write("page.x = ${touch.page.x}, page.y = ${touch.page.y}");
    }
  }

  touchEvents.innerHtml = "${touchEvents.innerHtml} ${sb.toString()} <br/>";
  print("onTouchCancel: ${sb.toString()}");
}

onTouchEnd(TouchEvent event) {
  StringBuffer sb = new StringBuffer();
  TouchList touches = event.touches;
  if (touches != null) {
    sb.write("onTouchEnd: ");
    sb.write("touches.length ${touches.length} ");
    if (touches.length > 0) {
      Touch touch = touches.first;
      sb.write("page.x = ${touch.page.x}, page.y = ${touch.page.y}");
    }
  }

  touchEvents.innerHtml = "${touchEvents.innerHtml} ${sb.toString()} <br/>";
  print("onTouchEnd: ${sb.toString()}");
}

onTouchMove(TouchEvent event) {
  StringBuffer sb = new StringBuffer();
  TouchList touches = event.touches;
  if (touches != null) {
    sb.write("onTouchMove: ");
    sb.write("touches.length ${touches.length} ");
    if (touches.length == 1) {
      Touch touch = touches.first;
      sb.write("page.x = ${touch.page.x}, page.y = ${touch.page.y}");
    } else if (touches.length > 1) {
      touches.forEach((Touch touch) {
        sb.write("[page.x = ${touch.page.x}, page.y = ${touch.page.y}], ");
        sb.write("[client.x = ${touch.client.x}, client.y = ${touch.client.y}], ");
      });
    }
  }

  touchEvents.innerHtml = "${touchEvents.innerHtml} ${sb.toString()} <br/>";
  print("onTouchMove: ${sb.toString()}");
  //event.preventDefault();
  event.stopPropagation();
}

onTouchStart(TouchEvent event) {
  StringBuffer sb = new StringBuffer();
  TouchList touches = event.touches;
  if (touches != null) {
    sb.write("onTouchStart: ");
    sb.write("touches.length ${touches.length} ");
    if (touches.length > 0) {
      Touch touch = touches.first;
      sb.write("page.x = ${touch.page.x}, page.y = ${touch.page.y}");
    }
  }

  touchEvents.innerHtml = "${touchEvents.innerHtml} ${sb.toString()} <br/>";
  print("onTouchStart: ${sb.toString()}");
}

void main() {
  touchEvents = query("#touchEvents");
  print(touchEvents);
  window.onTouchCancel.listen(onTouchCancel);
  window.onTouchEnd.listen(onTouchEnd);
  window.onTouchMove.listen(onTouchMove);
  window.onTouchStart.listen(onTouchStart);
}
