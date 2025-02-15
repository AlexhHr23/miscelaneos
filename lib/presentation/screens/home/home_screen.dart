import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Miscelaneos'),
        actions: [
          IconButton(
            onPressed: () => context.push('/permissions'), 
            icon: Icon(Icons.settings)
          )
        ],
      ),
      body: _HomeView(),
    );
  }
}


class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}