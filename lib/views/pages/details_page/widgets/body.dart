

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../consts/size_config.dart';
import '../../home/home.dart';
const defaultDuration = Duration(milliseconds: 250);
class BodyDetails extends StatefulWidget {

  final innerimage;
  final imagesection;
  const BodyDetails({Key? key, this.innerimage, this.imagesection}) : super(key: key);

  @override
  State<BodyDetails> createState() => _BodyDetailsState();
}

class _BodyDetailsState extends State<BodyDetails> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
              widget.imagesection[selectedImage],
              fit: BoxFit.contain),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                widget.imagesection.length, (index) => buildSmallProductPreview(index, context)),
          ],
        )
      ],
    );
  }
  GestureDetector buildSmallProductPreview(int index, context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: themeController.isDarkTheme ?Theme.of(context).cardColor.withOpacity(selectedImage == index ? 1 : 0): Theme.of(context)
                  .primaryColor
                  .withOpacity(selectedImage == index ? 1 : 0))
        ),
        child: Image.network(widget.imagesection[index]??""),
      ),
    );
  }
}
