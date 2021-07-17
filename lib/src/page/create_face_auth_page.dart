import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:face_recognition_flutter/src/bloc/create_face_auth/create_face_auth_cubit.dart';
import 'package:face_recognition_flutter/src/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateFaceAuthPage extends StatefulWidget implements AutoRouteWrapper {
  final Uint8List _croppedFace;

  CreateFaceAuthPage(this._croppedFace);

  @override
  _CreateFaceAuthPageState createState() => _CreateFaceAuthPageState();

  @override
  Widget wrappedRoute(BuildContext context) =>
      BlocProvider<CreateFaceAuthCubit>(
        create: (_) => injector.get(),
        child: this,
      );
}

class _CreateFaceAuthPageState extends State<CreateFaceAuthPage> {
  final _labelController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Register New Face'),
        ),
        body: Column(
          children: [
            Expanded(child: Center(child: Image.memory(widget._croppedFace))),
            Container(
              alignment: Alignment.bottomCenter,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (text) {
                      if (text == null) {
                        return 'Label must be not null';
                      }
                      return null;
                    },
                    controller: _labelController,
                    decoration: InputDecoration(
                      hintText: "Enter a label",
                      suffixIcon: BlocListener<CreateFaceAuthCubit,
                          CreateFaceAuthState>(
                        listener: (context, state) => state.maybeWhen(
                            success: () => AutoRouter.of(context).pop(true),
                            orElse: () {}),
                        child: IconButton(
                          onPressed: () {
                            final label = _labelController.text;
                            if (label.isNotEmpty) {
                              BlocProvider.of<CreateFaceAuthCubit>(context)
                                  .createFaceAuth(widget._croppedFace, label);
                            }
                          },
                          icon: Icon(Icons.send),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
