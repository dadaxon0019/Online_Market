import 'package:flutter/material.dart';

class MainCardProducts extends StatelessWidget {
  const MainCardProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 135,
          height: 135,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/product4.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Column(
          children: [
            Text(
              'Air Jordan ',
              style: TextStyle(
                color: Color.fromARGB(255, 104, 103, 103),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 17,
                ),
                Text('4.5'),
                SizedBox(
                  width: 8,
                ),
                Text('|'),
                SizedBox(
                  width: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    '8.374 sold',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
