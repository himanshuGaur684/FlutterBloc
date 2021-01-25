import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blocks/local/retro/retro_bloc.dart';
import 'package:flutter_blocks/remote/response/retro_response.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final b=BlocProvider.of<RetroBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Retro Bloc'),
      ),
      body: BlocListener<RetroBloc, RetroState>(
        listener: (context,RetroState state){
          if(state is InitialRetroState){
            print(state.toString());
          }
          if (state is LoadedRetroState) {
            print(state.toString());
          }
          if (state is ErrorRetroState) {
            print(state.toString());
          }
        },
        child: BlocBuilder<RetroBloc, RetroState>(
          builder: (BuildContext context, RetroState state) {


            if(state is InitialRetroState){
              b.add(RetroEvent.fetchPost);
              print(state.toString());
            }
            if (state is LoadedRetroState) {
              print(state.toString());
              return _buildList(state.data);
            }
            if (state is ErrorRetroState) {
              print(state.toString());
              return Center(
                child: Text(state.error),
              );
            }
            b.close();
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildList(List<Posts> p) {
    print(p.length.toString());
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 3,
          child: ListTile(
              title: Text(p[index].title), subtitle: Text(p[index].body)),
        );
      },
      itemCount: p.length,
    );
  }
}
