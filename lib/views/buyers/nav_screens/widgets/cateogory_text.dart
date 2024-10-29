import 'package:flutter/material.dart';

class CateogoryText extends StatelessWidget {
  // const CateogoryText({super.key});

  final List<String> _Cateogorylable = [
    'food',
    'veg',
    'rice',
    'tea',
    'food',
    'veg',
    'rice',
    'tea',
    'milk tea'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cateogories",
            style: TextStyle(fontSize: 19),
          ),
          Container(
            height: 40,
            child: Row(
              children: [
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _Cateogorylable.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ActionChip(
                                backgroundColor: Colors.blueGrey,
                                onPressed: () {},
                                label: Center(
                                    child: Text(
                                  _Cateogorylable[index],
                                  style: TextStyle(color: Colors.blue),
                                ))),
                          );
                        })),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          )
        ],
      ),
    );
  }
}
