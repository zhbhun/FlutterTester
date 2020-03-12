import 'package:flutter/material.dart';
import '../ExampleLists.dart';
import './DropdownButton.dart' as DropdownButton;
import './GridLayout.dart' as GridLayout;
import './ImageFromNetwork.dart' as ImageFromNetwork;
import './InfiniteList.dart' as InfiniteList;
import './LoadLocalImage.dart' as LoadLocalImage;
import './LoadLocalJSON.dart' as LoadLocalJSON;
import './NavigationDrawer.dart' as NavigationDrawer;
import './PersistKeyValue.dart' as PersistKeyValue;
import './SimpleMaterialApp.dart' as SimpleMaterialApp;
import './StatelessWidgets.dart' as SatelessWidgets;
import './StatefulWidget.dart' as StatefulWidget;
import './UsingAppLifecycleState.dart';
import './UsingAlertDialog.dart' as UsingAlertDialog;
import './UsingBottomNavBar.dart' as UsingBottomNavBar;
import './UsingCustonFonts.dart' as UsingCustomFonts;
import './UsingEditText.dart' as UsingEditText;
import './UsingGradients.dart' as UsingGradients;
import './UsingListview.dart' as UsingListview;
import './UsingSnackbar.dart' as UsingSnackbar;
import './UsingStepper.dart' as UsingStepper;
import './UsingTabs.dart' as UsingTabs;
import './UsingThemes.dart' as UsingThemes;

final examples = [
  DropdownButton.example,
  GridLayout.example,
  ImageFromNetwork.example,
  InfiniteList.example,
  LoadLocalImage.example,
  LoadLocalJSON.example,
  NavigationDrawer.example,
  PersistKeyValue.example,
  SimpleMaterialApp.example,
  SatelessWidgets.example,
  StatefulWidget.example,
  UsingAppLifecycleState.example,
  UsingAlertDialog.example,
  UsingBottomNavBar.example,
  UsingCustomFonts.example,
  UsingEditText.example,
  UsingGradients.example,
  UsingListview.example,
  UsingSnackbar.example,
  UsingStepper.example,
  UsingTabs.example,
  UsingThemes.example
];

class Case extends StatelessWidget {
  static final example = ExampleItem(title: 'Case', widget: () => Case());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Case'),
        ),
        body: ExampleList(examples: examples));
  }
}
