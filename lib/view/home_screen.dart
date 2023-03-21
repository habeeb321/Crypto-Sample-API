import 'package:crypto_sample_api/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SafeArea(
        child: Center(
          child: Consumer<HomeController>(
            builder: (context, value, child) {
              return provider.isLoading == true
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        final data = value.homeValue;
                        return Column(
                          children: [
                            Text(data?.name ?? 'null'),
                            Text(data?.climate ?? 'null'),
                            Text(data?.diameter ?? 'null'),
                            Text(data?.gravity ?? 'null'),
                            Text(data?.population ?? 'null'),
                            Text(data?.terrain ?? 'null'),
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
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          provider.showData();
        },
        label: const Text('Fetch Api'),
      ),
    );
  }
}
