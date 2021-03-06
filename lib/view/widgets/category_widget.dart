import 'package:delivery/model/category_model.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final CategoryModel category;
  const CategoryWidget({Key? key, required this.category}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.27,
            width: MediaQuery.of(context).size.width*0.43,
            decoration: BoxDecoration(
              borderRadius: const BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(15),
                bottomStart: Radius.circular(15),
                topStart: Radius.circular(15),
              ),
              image: DecorationImage(image: NetworkImage(widget.category.imageUrl),
                  fit: BoxFit.cover
              ),
              color: Colors.teal,
            ),
          ),
          PositionedDirectional(
            bottom: 15,start: 15,
            child: Text(
              widget.category.name,style: const TextStyle(
                color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600
            ),),
          ),
        ],
      ),
    );
  }
}
