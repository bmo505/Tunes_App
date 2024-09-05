import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xff084594), sound: 'note1.wav'),
    TuneModel(color: Color(0xff2171b5), sound: 'note2.wav'),
    TuneModel(color: Color(0xff4292c6), sound: 'note3.wav'),
    TuneModel(color: Color(0xff6baed6), sound: 'note4.wav'),
    TuneModel(color: Color(0xff9ecae1), sound: 'note5.wav'),
    TuneModel(color: Color(0xffc6dbef), sound: 'note6.wav'),
    TuneModel(color: Color(0xffeff3ff), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff243138),
        centerTitle: true,
        title: const Text(
          'Tunes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];

  //   for (var color in tuneColors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
