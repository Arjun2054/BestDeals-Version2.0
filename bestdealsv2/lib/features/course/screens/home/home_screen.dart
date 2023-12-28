// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bestdealsv2/features/course/screens/home/widgets/home_app_bar.dart';

import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
