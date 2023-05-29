import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:example_app/provider/user_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedData = ref.watch(userDataProvider);
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text("HELLO"),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: '野球'),
                Tab(text: 'サッカー'),
                Tab(text: 'テニス'),
              ],
            ),
          ),
          body: Text("HELLO"),
        ));
  }
}
