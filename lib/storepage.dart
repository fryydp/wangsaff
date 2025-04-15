import 'package:flutter/material.dart';
import 'package:myapp/providerproduk.dart';

import 'ModelProduk.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: ambilProduk(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final List<Produk> ListProduk = snapshot.data!;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: ListProduk.length,
            itemBuilder: (context, index) {
              Produk produk = ListProduk[index];
              return Column(
                children: [Text(produk.title), Text(produk.price.toString())],
              );
            },
          );
        },
      ),
    );
  }
}
