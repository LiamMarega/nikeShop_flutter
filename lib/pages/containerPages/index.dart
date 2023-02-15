import 'package:flutter/material.dart';
import 'package:flutter_nike/components/loading/screen_spinner.dart';
import 'package:flutter_nike/pages/home/index.dart';
import 'package:flutter_nike/utils/shortcuts/index.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class ContainerScreens extends StatefulWidget {
  @override
  State<ContainerScreens> createState() => _ContainerScreensState();
}

class _ContainerScreensState extends State<ContainerScreens> {
  int _currentIndex = 0;
  bool loading = false;

  changeLoading(bool state) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Add Your Code here.
      setState(() {
        loading = state;
      });
    });
  }

  changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  renderPage() {
    switch (_currentIndex) {
      case 0:
        return HomePage();

      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex == 0) {
          return false;
        } else {
          changeIndex(0);
          return false;
        }
      },
      child: LoadingOverlay(
        isLoading: loading,
        color: Colors.black,
        progressIndicator: ScreenSpinner(
          label: '',
        ),
        child: Scaffold(
          body: renderPage(),
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (i) {
              setState(() => _currentIndex = i);
            },
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  width: mq(context).width * 0.06,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  width: mq(context).width * 0.06,
                  color: Colors.red,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: gc(context).primary),
                ),
                selectedColor: Colors.red,
              ),
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/saved.svg',
                  width: mq(context).width * 0.06,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/saved.svg',
                  width: mq(context).width * 0.06,
                  color: Colors.red,
                ),
                title: Text(
                  "Saves",
                  style: TextStyle(color: gc(context).primary),
                ),
                selectedColor: Colors.red,
              ),
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/bell.svg',
                  width: mq(context).width * 0.06,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/bell.svg',
                  width: mq(context).width * 0.06,
                  color: Colors.red,
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(color: gc(context).primary),
                ),
                selectedColor: Colors.red,
              ),
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/user.svg',
                  width: mq(context).width * 0.06,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/user.svg',
                  width: mq(context).width * 0.06,
                  color: Colors.red,
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(color: gc(context).primary),
                ),
                selectedColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
