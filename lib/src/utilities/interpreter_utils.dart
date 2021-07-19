import 'package:flutter/foundation.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

extension InterpreterUtils on Interpreter {
  static Future<Output> _run<Input,Output>(_InterpreterData<Input,Output> _interpreterData) async {
    Interpreter.fromAddress(_interpreterData.address)
          .run(_interpreterData.input as Object, _interpreterData.output as Object);
    return _interpreterData.output;
  }

  Future<Output> runCompute<Input,Output>(Input input, Output output) => compute(
        _run,
        _InterpreterData<Input,Output>(
          address: address,
          input: input,
          output: output,
        ));
}

class _InterpreterData<Input,Output> {
  final int address;
  final Input input;
  final Output output;

  _InterpreterData({
    required this.address,
    required this.input,
    required this.output,
  });
}
