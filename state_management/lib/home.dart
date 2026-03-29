import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/counter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Managment bloc"),
        centerTitle: true,
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(child:
        const Icon(Icons.add),
        onPressed: (){
          BlocProvider.of<CounterBloc>(context).add(CounterIncerement());
        }),
        SizedBox(
          height: 10,
        ),
         FloatingActionButton(child:
        const Icon(Icons.remove),
        onPressed: (){
          BlocProvider.of<CounterBloc>(context).add(CounterDecerement());
        }),
        SizedBox(
          height: 10,
        ),
         FloatingActionButton(child:
        const Icon(Icons.exposure_zero),
        onPressed: (){
          BlocProvider.of<CounterBloc>(context).add(CounterReset());
        }),
        SizedBox(
          height: 10,
        )
      ],
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if(state is CounterValueChanaged){
            return Text(
              state.counter.toString()
            );
          }else{
            return Text("v");
          }
          
        },
      ),

    );
  }
}