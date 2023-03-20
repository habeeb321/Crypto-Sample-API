import 'package:crypto_sample_api/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeController>(context, listen: false);
    provider.showData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SafeArea(child: Center(
        child: Consumer<HomeController>(
          builder: (context, value, child) {
            return ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                final data = value.homeList[index];
                return Column(
                  children: [
                    Text(data.baseAsset),
                    Text(data.highPrice),
                    Text(data.lowPrice),
                    Text(data.openPrice),
                    Text(data.symbol),
                  ],
                );
              },
              itemCount: 10,
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
                child: Divider(thickness: 3),
              ),
            );
          },
        ),
      )),
    );
  }
}
