
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_basic_integration_clean_arc/network/network_info.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
Future<void> setupLocatorAndInitDependencies() async {

  //! network
  registerLazySingleton<Connectivity>(Connectivity());

  //! network info
  registerLazySingleton<NetworkInfo>(NetworkInfoImpl(locator()));

 
}

void registerLazySingleton<T extends Object>(T object) {
  return locator.registerLazySingleton<T>(() => object);
}
