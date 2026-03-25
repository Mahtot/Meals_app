import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _gultenFreeFilterSet = false;


  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            onChanged: (isChecked){
              setState((){
                _gultenFreeFilterSet = isChecked;
              });
            },
            value:_gultenFreeFilterSet ,
            title: Text('Gluten-free', style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface
            )),
            subtitle: Text('Only include gluten-free meals', style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface
            )),
            activeThumbColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: EdgeInsets.only(left:34, right: 22),
          )
          ]
      ));
  }
}
