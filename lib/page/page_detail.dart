import 'package:dicoding_flutter_project/model/product.dart';
import 'package:flutter/material.dart';


class PageDetail extends StatelessWidget {
  final Product products;

  PageDetail({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              products.imageAsset,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 525,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE : TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  products.name,
                                  style: TextStyle(fontSize: 22),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  '${products.rating}',
                                  style: TextStyle(color: Colors.black45),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // NOTE : DESC
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child:
                            Text('Deskripsi', style: TextStyle(fontSize: 16)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Text(products.description,
                            style: TextStyle(fontSize: 14)),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Rp ' + products.price.toString() + ",00",
                                style: TextStyle(fontSize: 24)),
                            ElevatedButton(
                              child: Text('Buy Now',
                                  style: TextStyle(fontSize: 18, color: Colors.black)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(
                                      "Barang sudah dimasukkan ke keranjang"),
                                ));
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  FavoriteButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.amberAccent,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
