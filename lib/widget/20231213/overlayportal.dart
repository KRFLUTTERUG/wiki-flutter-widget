import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

class MyOverlayPortal extends StatefulWidget {
  const MyOverlayPortal({super.key});

  @override
  State<MyOverlayPortal> createState() => _MyOverlayPortalState();
}

class _MyOverlayPortalState extends State<MyOverlayPortal> {
  final _overlayController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: _overlayController.toggle,
              child: OverlayPortal(
                controller: _overlayController,
                overlayChildBuilder: (BuildContext context) {
                  return const Positioned(
                      top: 150, right: 150, child: Text("I'm an overlay!"));
                },
                child: const Text("Press Me!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
