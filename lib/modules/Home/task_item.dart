import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: 400,
      height: 115,
      decoration: BoxDecoration(
        color: const Color(0xffEC4B4B),
          borderRadius: BorderRadius.circular(15),),
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Slidable(
        startActionPane: ActionPane(motion: DrawerMotion(), children: [
          SlidableAction(
            autoClose: true,
            flex: 2,
        borderRadius: BorderRadius.circular(15),
            onPressed: (context){},
          backgroundColor: const Color(0xffEC4B4B),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: "Delete",
          )
        ],),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          width: 400,
          height: 115,
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 6,
                height: 70,
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("play basket ball", style: theme.textTheme.bodyLarge,),
                 const SizedBox(height: 5,),
                  Row(
                    children: [
                     Icon(Icons.alarm,color: theme.colorScheme.onSecondary,size: 15,),
                     const SizedBox(width: 5,),
                      Text("10:30 AM",style: theme.textTheme.bodySmall,)
                    ],
                  )
                ],
              ),
              Container(
                width: 70,
                height: 40,
                padding: EdgeInsets.all(11),
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child:Image.asset("assets/images/check_icon.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
