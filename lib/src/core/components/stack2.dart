import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Stack2 extends Stack {
  const Stack2({
    super.key,
    super.clipBehavior = Clip.none,
    super.children,
  });

  @override
  RenderStack createRenderObject(BuildContext context) {
    return RenderStack2(
      alignment: alignment,
      textDirection: textDirection ?? Directionality.of(context),
      fit: fit,
      clipBehavior: clipBehavior,
    );
  }
}

class RenderStack2 extends RenderStack {
  RenderStack2({
    AlignmentGeometry? alignment,
    super.textDirection,
    StackFit? fit,
    super.clipBehavior = Clip.none,
  }) : super(
          alignment: alignment ?? AlignmentDirectional.topStart,
          fit: fit ?? StackFit.loose,
        );

  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    if (hitTestChildren(result, position: position) || hitTestSelf(position)) {
      result.add(BoxHitTestEntry(this, position));
      return true;
    }
    return false;
  }
}
