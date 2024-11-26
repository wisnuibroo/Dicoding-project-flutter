import 'package:dicoding_flutter_project/card_product/card.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24,
                ),
                child: Text('Ibro lifestyle', style: TextStyle(fontSize: 24)),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text('Pilih laptop favoritmu dengan bahan berkualitas',
                    style: TextStyle(fontSize: 16)),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Popular',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ProductsCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
