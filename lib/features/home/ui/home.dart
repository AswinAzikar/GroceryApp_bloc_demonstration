import 'package:bloc_project/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        bloc: homeBloc,
        // listenWhen: (previous, current) {} ,
        // buildWhen: (previous, current) {} ,
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Grocery"),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined))
              ],
            ),
          );
        });
  }
}
