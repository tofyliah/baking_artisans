import 'package:baking_artisan/models/models.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final double leftPosition;
  final bool isWishlist;

  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.4,
    this.leftPosition = 5,
    this.isWishlist = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;

    return InkWell(
      onTap: (){
        Navigator.pushNamed(
            context,
            '/product',
            arguments: product
        );
      },
      child: Stack(
        children: <Widget>[
          Container(
            width: widthValue,
            height: 150,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60,
            left: leftPosition,
            child: Container(
              width: widthValue - 5 -leftPosition,
              height: 80,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(50),
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: leftPosition + 5,
            child: Container(
                width: widthValue - 15 - leftPosition,
                height: 70,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(
                              product.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '\PHP${Product.products[0].price}',
                              style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.white,),
                          onPressed:() {},
                        ),
                      ),
                      isWishlist ?
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.delete, color: Colors.white,),
                          onPressed:() {},
                        ),

                      ): SizedBox(), ],
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
