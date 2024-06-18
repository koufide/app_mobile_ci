import 'package:flutter/material.dart';

class VirementPage extends StatelessWidget {
  const VirementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Virements"),),
      body: const Center(child: Text("Virements")),
    );
  }
}