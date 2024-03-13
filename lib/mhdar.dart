import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart'as vec;
class mhdar extends StatefulWidget {
  const mhdar({Key? key}) : super(key: key);

  @override
  State<mhdar> createState() => _mhdarState();
}

class _mhdarState extends State<mhdar> {
  ArCoreController? arCoreController;
mhdarcore(ArCoreController controller){
  arCoreController =controller;
  dioplaycore(arCoreController!);
}
  dioplaycore(ArCoreController arCoreController) {
  final material=ArCoreMaterial(
    color: Colors.blue,
    metallic: 2
  );
  final cub=ArCoreCube(size: vec.Vector3(0.5, 0.5, 0.5), materials: [material]);
final node=ArCoreNode(
  shape: cub,
  position: vec.Vector3(-0.5, 0.5, -0.5)
);
arCoreController.addArCoreNode(node);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArCoreView(onArCoreViewCreated: mhdarcore),

    );
  }

}
