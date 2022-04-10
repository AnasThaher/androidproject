import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  static const String id = 'category';

  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            " Category Screen ",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Row(
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.grey.shade800)),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("upload Image"),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Enter Category Name"),
                    contentPadding: EdgeInsets.zero),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Cancel",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                side: MaterialStateProperty.all(
                    BorderSide(color: Theme.of(context).primaryColor)),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
              ),
            ),

          ],
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
