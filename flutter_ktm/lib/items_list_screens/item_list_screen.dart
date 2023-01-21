import 'package:flutter/material.dart';
import 'package:flutter_ktm/items_detail_screens/item_detail_screen.dart';
import 'package:flutter_ktm/models/category_model.dart';
import 'package:flutter_ktm/models/just_for_you_item_model.dart';

class ItemsListScreen extends StatefulWidget {
  const ItemsListScreen({Key? key}) : super(key: key);

  @override
  State<ItemsListScreen> createState() => _ItemsListScreenState();
}

class _ItemsListScreenState extends State<ItemsListScreen> {
  final ScrollController controller = ScrollController();
  final String logo =
      "https://images-platform.99static.com//WDlJ482oDevaJmRclv9vwZmXBxU=/553x0:1194x641/fit-in/500x500/99designs-contests-attachments/117/117240/attachment_117240736";

  final List<Category> categories = [
    Category(
        name: "Textile",
        image: "https://cdn-icons-png.flaticon.com/128/3006/3006134.png"),
    Category(
        name: "Pottery",
        image: "https://cdn-icons-png.flaticon.com/128/3408/3408931.png"),
    Category(
        name: "Carving",
        image: "https://cdn-icons-png.flaticon.com/128/2400/2400578.png"),
    Category(
        name: "Origami",
        image: "https://cdn-icons-png.flaticon.com/128/3813/3813693.png"),
    Category(
        name: "Sculpture",
        image: "https://cdn-icons-png.flaticon.com/128/5231/5231797.png"),
    Category(
        name: "Crochet",
        image: "https://cdn-icons-png.flaticon.com/128/1467/1467388.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))),
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 40,
                  width: 40,
                  child: Image.network(
                    logo,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Explore",
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          controller: controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              CategoriesListSection(categories: categories),
              JustForYouSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class JustForYouSection extends StatelessWidget {
  JustForYouSection({
    Key? key,
  }) : super(key: key);
  final List<JustForyouItem> items = [
    JustForyouItem(
        name: "Stylish Pot",
        image:
            "https://images.unsplash.com/photo-1638192808899-b5e65e1dca97?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGhhbmRpY3JhZnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
        count: 10,
        description:
            "Handmade fabrics have been a part of the Nepali way of living since time immemorial. The desire to create is one of the deepest yearnings of the human soul. And, with handmade textiles, this yearning has been kept alive for centuries. These Indian fabrics reflect the traditional heritage and cultural wealth of nepal. The artisans creating these Handloom fabrics are like gems hidden in the depths of the country. They possess the traditional knowledge passed on from generations which keeps alive the time map of the Indian civilizations",
        price: "Rs.100"),
    JustForyouItem(
        name: "Wollen pillow",
        image:
            "https://images.unsplash.com/photo-1575277340599-43db25b63b6f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGhhbmRpY3JhZnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
        count: 20,
        description:
            "Handmade fabrics have been a part of the Nepali way of living since time immemorial. The desire to create is one of the deepest yearnings of the human soul. And, with handmade textiles, this yearning has been kept alive for centuries. These Indian fabrics reflect the traditional heritage and cultural wealth of nepal. The artisans creating these Handloom fabrics are like gems hidden in the depths of the country. They possess the traditional knowledge passed on from generations which keeps alive the time map of the Indian civilizations",
        price: "Rs.80"),
    JustForyouItem(
        name: "Wollen pillow",
        image:
            "https://images.unsplash.com/photo-1575277340599-43db25b63b6f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGhhbmRpY3JhZnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
        count: 20,
        description:
            "Handmade fabrics have been a part of the Nepali way of living since time immemorial. The desire to create is one of the deepest yearnings of the human soul. And, with handmade textiles, this yearning has been kept alive for centuries. These Indian fabrics reflect the traditional heritage and cultural wealth of nepal. The artisans creating these Handloom fabrics are like gems hidden in the depths of the country. They possess the traditional knowledge passed on from generations which keeps alive the time map of the Indian civilizations",
        price: "Rs.80"),
    JustForyouItem(
        name: "Wollen pillow",
        image:
            "https://images.unsplash.com/photo-1575277340599-43db25b63b6f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGhhbmRpY3JhZnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
        count: 20,
        description:
            "Handmade fabrics have been a part of the Nepali way of living since time immemorial. The desire to create is one of the deepest yearnings of the human soul. And, with handmade textiles, this yearning has been kept alive for centuries. These Indian fabrics reflect the traditional heritage and cultural wealth of nepal. The artisans creating these Handloom fabrics are like gems hidden in the depths of the country. They possess the traditional knowledge passed on from generations which keeps alive the time map of the Indian civilizations",
        price: "Rs.80")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Text("Just For You",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 500,
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (conttext) {
                    return ItemDetailScreen(
                      item: item,
                    );
                  }));
                },
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120,
                          color: Colors.blue,
                          child: Image.network(
                            item.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(item.name),
                        Text(item.price),
                      ]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CategoriesListSection extends StatelessWidget {
  const CategoriesListSection({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8 * 11,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
                width: 8,
              ),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final Category category = categories[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  child: Column(children: [
                    Container(
                      height: 48,
                      child: Image.network(category.image),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(category.name)
                  ]),
                ),
              ),
            );
          }),
    );
  }
}
