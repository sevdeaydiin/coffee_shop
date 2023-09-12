import 'package:coffee_shop/colors.dart';
import 'package:coffee_shop/widgets/custom_text.dart';
import 'package:coffee_shop/widgets/custom_text_bold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final String description = 'What would you like\nto drink today?';
  final List<String> categories = [
    'Popular',
    'Black Coffee',
    'WinterSpecial',
    'Cold Coffee'
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      appBar: _appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DescriptionView(size: size, description: description),
          Expanded(
            flex: 1,
            child: ListView(
              padding: EdgeInsets.only(left: size.width * 0.06),
              //scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 80,
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    selected == index ? darkBrown : background),
                            child: Center(
                                child: CustomText(
                                    text: categories[index],
                                    color: selected == index
                                        ? background
                                        : darkBrown)),
                          ),
                        );
                      },
                      separatorBuilder: (_, index) => const SizedBox(width: 15),
                      itemCount: categories.length),
                )
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              width: size.width,
              height: size.height,
              padding: EdgeInsets.only(top: size.height * 0.01),
              margin: EdgeInsets.only(top: size.height * 0.04),
              //decoration: BoxDecoration(color: darkBrown),
              color: darkBrown,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _CustomCard(size: size, image: 'assets/images/coffee_1.png'),
                  _CustomCard(size: size, image: 'assets/images/coffee_5.png'),
                  _CustomCard(size: size, image: 'assets/images/coffee_6.png'),
                  _CustomCard(size: size, image: 'assets/images/coffee_7.png'),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: background,
          unselectedItemColor: darkBrown,
          selectedItemColor: darkBrown,
          iconSize: 25,
          //currentIndex: 4,
          onTap: (_) {},
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.shopping_cart_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.favorite_border),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.account_circle_outlined),
            ),
          ]),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: background,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.search, color: darkBrown, size: 25),
      ),
      title: CustomText(
        text: 'Good day, Sevde',
        color: darkBrown,
      ),
      actions: [
        CustomIconButton(icon: Icons.notifications),
        CustomIconButton(icon: Icons.menu)
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required this.size, required this.image});

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.13,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.015),
      padding: EdgeInsets.symmetric(
          vertical: size.height * .008, horizontal: size.width * 0.06),
      decoration:
          BoxDecoration(color: light, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Black Coffee',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: darkBrown),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                'ICED AMERICANO',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: darkBrown, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(width: size.width * 0.12),
          Image.asset(
            image,
          )
        ],
      ),
    );
  }
}

class DescriptionView extends StatelessWidget {
  const DescriptionView({
    super.key,
    required this.size,
    required this.description,
  });

  final Size size;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: size.width * 0.07, top: size.height * 0.01),
      child: CustomTextBold(text: description),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  const CustomIconButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: darkBrown,
          size: 25,
        ));
  }
}
