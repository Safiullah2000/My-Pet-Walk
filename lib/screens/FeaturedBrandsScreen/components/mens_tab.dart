import 'package:flutter/material.dart';
import '../../../components/service_comp.dart';
import '../../../constants/image_constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../ProductDetaislScreen/product_details_screen.dart';

class MensTabBody extends StatefulWidget {
  const MensTabBody({super.key});

  @override
  State<MensTabBody> createState() => _MensTabBodyState();
}

class _MensTabBodyState extends State<MensTabBody> {
  final List<String> imagePaths = [
    Images.SNACKS1,
    Images.SNACKS2,
  ];
  final List<String> servicetext = [
    "Earthborn Holistic",
    "Earthborn Holistic",
    
  ];
   final List<String> nametext = [
    "Earth Bites - Lamb Meal Recipe",
    "Kurgo Snacks -  Meaty Treats For Dogs",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.5,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 11,
        ),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Twl.navigateTo(context, ProductDetailsScreen());
              },
              child: ServiceContainer(
                  image: imagePaths[index], text: servicetext[index],name: nametext[index])
              //ServiceContainer()
              // CartContent(
              // image: imagePaths[index],
              // name: 'Louis Philippe',
              // detail: 'Colourblocked Polo Collar Golf T-shirt',
              // price: 'Rs.1209',
              // discount:'(45% OFF)' ,),
              );
        },
      ),
    );
  }
}
