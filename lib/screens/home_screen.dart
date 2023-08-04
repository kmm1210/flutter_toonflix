// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_toonflix/models/webtoon_model.dart';
import 'package:flutter_toonflix/services/api_service.dart';

class HomeScreen extends StatelessWidget {

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "Today's Toons",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text('There is data');
          }else{
            return const Text('Loading ...');
          }
        },),
    );
  }
}
