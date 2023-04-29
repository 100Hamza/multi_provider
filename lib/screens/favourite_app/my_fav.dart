import 'package:flutter/material.dart';
import 'package:multi_provider/provider/favoourite_items_provider.dart';
import 'package:provider/provider.dart';

class MyFavourite extends StatefulWidget {
  const MyFavourite({Key? key}) : super(key: key);

  @override
  State<MyFavourite> createState() => _MyFavouriteState();
}

class _MyFavouriteState extends State<MyFavourite> {
  @override
  Widget build(BuildContext context) {
    final myFav = Provider.of<FavouriteItemsProvider>(context);
    return  Scaffold(
        appBar: AppBar(
          title: const Text('My Favourite'),
        ),
        body: ListView.builder(
          itemCount: myFav.getSelectedItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<FavouriteItemsProvider>(
                builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.getSelectedItems.contains(index)) {
                        value.removeItem(index);
                      } else {
                        value.addItem(index);
                      }
                      print("Items in list: ${value.getSelectedItems[index]}");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: Colors.red,
                    title: Text('List $index'),
                    trailing: value.getSelectedItems.contains(index)
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_outline_rounded),
                  );
                },
              ),
            );
          },
        ));;
  }
}
