import 'package:counter/app.dart';
import 'package:counter/counter_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  //intializing the counterobserver i just created.
  Bloc.observer = CounterObserver();
  runApp(const CounterApp());
}

