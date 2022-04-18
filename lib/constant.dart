
  import 'package:flutter/material.dart';

FloatingActionButton FAB(String label, IconData icon) {
    return FloatingActionButton.extended(

      onPressed: () {},
      backgroundColor: const Color.fromARGB(255, 12, 1, 29),
      label:  Text(label),
      icon:  Icon(icon),
    );
  }

  class textBox extends StatelessWidget {
 final String text;
const textBox({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0),
      child: Container(
        width:120,
        height: 50,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         color: Colors.grey.shade300,  
       ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(child: Text(text, style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
       ),
      ),
    );
  }
}

 class BoxIcon extends StatelessWidget {
  const BoxIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(13),
          color: Colors.white),
      child:  Center(
        child: Icon(
           icon ,
          color: Colors.black,
        ),
      ),
    );
  }
}
