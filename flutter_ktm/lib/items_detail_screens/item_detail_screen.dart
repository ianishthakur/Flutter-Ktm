import 'package:flutter/material.dart';
import 'package:flutter_ktm/models/just_for_you_item_model.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({Key? key, required this.item}) : super(key: key);
  final JustForyouItem item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Details")),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  item.image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(item.name, style: TextStyle(fontSize: 24)),
              SizedBox(
                height: 8,
              ),
              Text("Price:" + item.price, style: TextStyle(fontSize: 24)),
              SizedBox(
                height: 8,
              ),
              Text("Count:" + item.count.toString(),
                  style: TextStyle(fontSize: 24)),
              SizedBox(
                height: 8,
              ),
              Text("Description:" + item.description,
                  style: TextStyle(fontSize: 16)),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Add to cart"))
            ],
          ),
        )));
  }
}
