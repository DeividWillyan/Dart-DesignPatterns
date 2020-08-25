import 'package:design_patterns/Creational/Abstract_Factory/abstract_factory.dart';
import 'package:design_patterns/Creational/Builder/builder.dart';
import 'package:design_patterns/Creational/Factory_Mathod/factory_method.dart';
import 'package:design_patterns/Creational/Prototype/prototype.dart';
import 'package:design_patterns/Creational/Singleton/singleton.dart';
import 'package:design_patterns/Structural/Adpter/adpter.dart';
import 'package:design_patterns/Structural/Bridge/bridge.dart';
import 'package:design_patterns/Structural/Composite/composite.dart';
import 'package:design_patterns/Structural/Decorator/decorator.dart';

void main(List<String> arguments) {
  print('--- Inicialized Abstract Factory example');
  var abstractFactory = AbstractFactory();
  abstractFactory();
  print('--- Finalized Abstract Factory example\n');

  print('--- Inicialized Factory Method example');
  var fectoryMethod = FactoryMethod();
  fectoryMethod();
  print('--- Finalized Factory Method example\n');

  print('--- Inicialized Builder example');
  var builder = Builder();
  builder();
  print('--- Finalized Builder example\n');

  print('--- Inicialized Prototype example');
  var prototype = Prototype();
  prototype();
  print('--- Finalized Prototype example\n');

  print('--- Inicialized Singleton example');
  var singleton = Singleton();
  singleton();
  print('--- Finalized Singleton example\n');

  print('--- Inicialized Adpter example');
  var adpter = Adpter();
  adpter();
  print('--- Finalized Adpter example\n');

  print('--- Inicialized Bridge example');
  var bridge = Bridge();
  bridge();
  print('--- Finalized Bridge example\n');

  print('--- Inicialized Composite example');
  var composite = Composite();
  composite();
  print('--- Finalized Composite example\n');

  print('--- Inicialized Composite example');
  var decorator = Decorator();
  decorator();
  print('--- Finalized Composite example\n');
}
