import 'package:my_protfolio/services/navigationServices.dart';
import 'package:get_it/get_it.dart';

GetIt locator=GetIt.instance;


void setUpLocator(){
  locator.registerLazySingleton(() => NavigationServices());
}