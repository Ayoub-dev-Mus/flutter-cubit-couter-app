import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(255, 122, 135, 252),
              Color.fromARGB(255, 232, 182, 255),
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Counter',
                style: TextStyle(
                  color: Color.fromRGBO(23, 69, 130, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return AnimatedFlipCounter(
                      value: state.CounterValue,
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(23, 69, 130, 1),
                        fontSize: 100,
                      ));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(23, 69, 130, 1),
                        width: 4,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      splashRadius: 20,
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).increment();
                      },
                      iconSize: 50,
                      color: const Color.fromRGBO(23, 69, 130, 1),
                      tooltip: 'Decrement',
                      icon: const Icon(Icons.remove),
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(23, 69, 130, 1),
                        width: 4,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      splashRadius: 20,
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).increment();
                      },
                      iconSize: 50,
                      color: const Color.fromRGBO(23, 69, 130, 1),
                      tooltip: 'Increment',
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
