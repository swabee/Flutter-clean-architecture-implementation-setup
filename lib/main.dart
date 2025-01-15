import 'package:flutter/cupertino.dart';
import 'package:flutter_basic_integration_clean_arc/service_locator/service_locator.dart';

void main()async {
  //add this service locator in root 
 await setupLocatorAndInitDependencies(); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //retrun material app and continue ui
    return const Placeholder();
  }
}