import 'package:flutter/material.dart';
import 'package:multi_provider/helper/helper_navigation.dart';
import 'package:multi_provider/provider/favoourite_items_provider.dart';
import 'package:multi_provider/screens/favourite_app/my_fav.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
        appBar: AppBar(
          title: Text('Favourite Screen'),
          actions: [
            InkWell(
              onTap: (){
                HelperNavigation.pushRoute(context, MyFavourite());
              },
                child: const Icon(Icons.favorite)),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02,)
          ],
        ),
        body: ListView.builder(
          itemCount: 100,
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
        ));
  }
}
