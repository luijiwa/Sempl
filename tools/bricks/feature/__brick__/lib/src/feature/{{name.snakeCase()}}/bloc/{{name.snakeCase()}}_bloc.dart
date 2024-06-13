import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chefshouse/src/core/models/enums/screen_status.dart';
import 'package:chefshouse/src/core/utils/logger.dart';
import 'package:chefshouse/src/feature/{{name.snakeCase()}}/data/repositories/i_{{name.snakeCase()}}_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part '../../../../../../../../../bricks/feature/__brick__/lib/src/feature/{{name.snakeCase()}}/bloc/{{name.snakeCase()}}_bloc.freezed.dart';
part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  final I{{name.pascalCase()}}Repository _repository;
  {{name.pascalCase()}}Bloc(this._repository) : super(const {{name.pascalCase()}}State()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(_Started event, Emitter<{{name.pascalCase()}}State> emit) async {
    emit(state.copyWith(status: ScreenStatus.loading));
    try {

      emit(
        state.copyWith(
          status: ScreenStatus.success,
        ),
      );
    } catch (e, stackTrace) {
      logger.e(e, stackTrace: stackTrace);
      emit(state.copyWith(status: ScreenStatus.failure));
    }
  }
}
