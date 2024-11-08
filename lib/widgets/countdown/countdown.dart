import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountdownWidget extends StatelessWidget {
  const CountdownWidget({
    super.key,
    required this.onComplete,
    this.childBuilder,
  });

  final Widget? Function(BuildContext context, int milliseconds)? childBuilder;
  final Function() onComplete;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CountdownCubit(),
      child: BlocBuilder<CountdownCubit, int>(
        builder: (context, state) {
          if (state == 0) {
            Future.delayed(Duration.zero, () {
              onComplete.call();
            });
          }
          return childBuilder?.call(context, state) ??
              Text(
                '$state',
                style: Theme.of(context).textTheme.displayMedium,
              );
        },
      ),
    );
  }
}

class CountdownCubit extends Cubit<int> {
  CountdownCubit() : super(countdownSeconds) {
    // _startCountdown();
  }

  static const int countdownSeconds = 60;

  StreamSubscription<int>? _streamSubscription;

  Future<void> startCountdown() async {
    _streamSubscription?.cancel();
    _streamSubscription = Stream.periodic(
      const Duration(seconds: 1),
      (x) {
        return countdownSeconds - x - 1;
      },
    ).take(countdownSeconds).listen((duration) {
      emit(duration);
    });
  }

  Future<void> cancel() async {
    _streamSubscription?.cancel();
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
