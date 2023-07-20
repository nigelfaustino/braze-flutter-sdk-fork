import 'package:braze_plugin/braze_plugin.dart';
import 'package:flutter/foundation.dart';


const _loggerName = 'BrazeService';

class BrazeService {
  static BrazeService _instance;
  final BrazePlugin _brazePlugin;

  factory BrazeService() {
    _instance ??= BrazeService._(
      BrazePlugin(
        customConfigs: {replayCallbacksConfigKey: true},
      ),
    );

    return _instance;
  }

  BrazeService._(this._brazePlugin);

  BrazePlugin get plugin => _brazePlugin;

}