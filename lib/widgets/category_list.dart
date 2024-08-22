import 'package:flutter/material.dart';

class CategoryListview extends StatelessWidget {
  List? Categories;
  CategoryListview({super.key, this.Categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shop By Category"),
                TextButton(onPressed: () {}, child: Text("See All"))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Categorytile();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Categorytile extends StatelessWidget {
  const Categorytile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1689287428096-7e1dcc705a5c?q=80&w=1922&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          ),
          SizedBox(
            height: 10,
          ),
          Text("data")
        ],
      ),
    );
  }
}
