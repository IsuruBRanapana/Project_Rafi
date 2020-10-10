import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:project_rafi/core/utils/app_costants.dart';


class Session extends ChangeNotifier {
  Stopwatch _watch;
  Timer _timer;
  VoidCallback _timeoutCallback;

  Duration get currentDuration => _currentDuration;
  Duration _currentDuration = Duration.zero;

  bool get isRunning => _timer != null;

  Session() {
    _watch = Stopwatch();
//    startSession();
  }

  void _onTick(Timer timer) {
    _currentDuration = _watch.elapsed;
    if (_currentDuration.inSeconds == AppConstants.SESSION_TIMEOUT) {
      _timeoutCallback();
      stopSession();
    }
    notifyListeners();
  }

  void startSession() {
    if (_timer != null || !AppConstants.isLoggedIn) return;

    _timer = Timer.periodic(Duration(seconds: 1), _onTick);
    _watch.start();

    notifyListeners();
  }

  void onSessionTimeOut(VoidCallback callback) {
    if (this._timeoutCallback == null) this._timeoutCallback = callback;
  }

  void stopSession() {
    _timer?.cancel();
    _timer = null;
    _watch.stop();
    _currentDuration = _watch.elapsed;

    notifyListeners();
  }

  void resetSession() {
    if (!AppConstants.isLoggedIn) return;

    _watch.reset();
    _currentDuration = Duration.zero;
    startSession();
    notifyListeners();
  }
}
