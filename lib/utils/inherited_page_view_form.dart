import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InheritedPageViewForm extends InheritedWidget {
  const InheritedPageViewForm({
    required this.next,
    required this.back,
    required super.child,
    super.key,
  });

  final VoidCallback next;
  final VoidCallback back;

  static InheritedPageViewForm of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<InheritedPageViewForm>();
    assert(result != null, 'No InheritedPageViewForm found in context');

    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}

class PageViewPositionCubit extends Cubit<int> {
  PageViewPositionCubit() : super(1);

  void positionUpdated(int pos) {
    emit(pos + 1);
  }
}
