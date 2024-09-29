import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/core/utils/assets_manager.dart';
import 'package:quran_app_c12_offline/core/utils/strings_manager.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/settings_tab/settings_tab_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/tasbeh_tab/tasbeh_tab_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsManager.lightMainBg), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('القران'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index; // 1
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                  label: StringsManager.quranLabel),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                  label: StringsManager.hadithLabel),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),
                  label: StringsManager.tasbehLabel),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                  label: StringsManager.radioLabel),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: Icon(Icons.settings),
                  label: StringsManager.settingsLabel),
            ]),

        body: tabs[selectedIndex], // 1
      ),
    );
  }
}
