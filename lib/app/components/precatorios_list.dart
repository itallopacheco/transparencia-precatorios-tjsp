import 'package:flutter/material.dart';

class MockedCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CardItem> mockedItems = [
      CardItem(
        title: 'Mapa precatório - 2023',
        subtitle: 'Nos termos do Art. 85, da Resolução CNJ nº 303.',
        date: '01/01/2023',
      ),
      CardItem(
        title: 'Mapa precatório - 2022',
        subtitle: 'Nos termos do Art. 85, da Resolução CNJ nº 303.',
        date: '02/01/2022',
      ),
      CardItem(
        title: 'Mapa precatório - 2021',
        subtitle: 'Nos termos do Art. 85, da Resolução CNJ nº 303.',
        date: '03/01/2021',
      ),
    ];

    return CardList(items: mockedItems);
  }
}

class CardList extends StatelessWidget {
  final List<CardItem> items;

  CardList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) {
        return Card(
          child: ListTile(
            title: Text(item.title),
            subtitle: Text(item.subtitle),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(item.date),
                SizedBox(width: 10),
                Icon(Icons.download),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

class CardItem {
  final String title;
  final String subtitle;
  final String date;

  CardItem({required this.title, required this.subtitle, required this.date});
}
