import 'package:flutter/material.dart';
import 'package:online_shop/widget/counter.dart';
import 'package:online_shop/widget/text.dart';

class CastCard extends StatelessWidget {
  final title;
  final subtitle;
  final trailing;

  const CastCard({super.key, this.title, this.subtitle, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color.fromRGBO(235, 235, 235, 1),
        child: Column(
          children: [
            ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
                trailing: trailing),
          ],
        ));
  }
}

class CardForCart extends StatelessWidget {
  const CardForCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.network(
                  'https://images.satu.kz/204663480_w640_h640_krossovki-nike-sb.jpg',
                  width: 100,
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 100,
                    child: Text(
                      'Nike - Running shoes are the lightest of all.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(height: 30),
                  Counter(),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BigText(
                  size: 30,
                  title: "120 \$",
                  color: Colors.black,
                ),
                InkWell(
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Center(
                      child: BigText(
                        size: 16,
                        title: 'buy',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
