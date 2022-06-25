import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noureddine_ios/Bloc/counter.bloc.dart';
import 'package:noureddine_ios/Bloc/theme.bloc.dart';
import 'package:noureddine_ios/Bloc/users.bloc.dart';
import 'package:noureddine_ios/Activities/pages/root.view.dart';


void main(){
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterBloc()),
        BlocProvider(create: (context)=>ThemeBloc()),
        BlocProvider(create: (context)=>UsersBloc()),

      ],
      child: const RootView(),
    );
  }
}


