import 'package:flutter/material.dart';

class MainCardProducts extends StatelessWidget {
  const MainCardProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 135,
            height: 135,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoS0pmviIEKIaiPf1GDGVpoRw3iSbsUdWoWg&usqp=CAU'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Text(
                  '& 1400',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
