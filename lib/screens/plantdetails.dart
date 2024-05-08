import 'package:flutter/material.dart';
import 'package:assignment1/models/plants.dart';

class PlantDetails extends StatefulWidget {


  @override
  _PlantDetailsState createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  late Plants plantobj;

  bool isExpanded = false;
  List text1 = ["FREQUENCY","WATER","TEMP","LIGHT"];
  List text2 = ["1/week","250 ml","15-24 c","Low"];
  final List<IconData> icons = [
    Icons.calendar_today_outlined,
    Icons.water_drop_outlined,
    Icons.thermostat,
    Icons.light_mode_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments as int;
    plantobj = plantslist[index];


    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  plantobj.image!,
                  height: 400,
                  width: 400,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 30),
                Text(
                  plantobj.name!,
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),

                GridView.count(
                  childAspectRatio: 1.8,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(4, (index) {
                    return GridTile(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(15)
                        ),
                        height: 10,
                       // color: Colors.blueGrey[50],
                        margin: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //Icon(Icons.add),
                              Icon(icons[index],color: Colors.blueGrey[200],size: 35,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(text1[index]!,style: TextStyle(color:Colors.blueGrey[300],fontWeight: FontWeight.bold),),
                                  Text(text2[index]!,style: TextStyle(color:Colors.blueGrey[300],fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          )
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 20,),
                Text(
                  isExpanded ? plantobj.description! : shortenDescription(plantobj.description!),
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(
                    isExpanded ? 'Read less' : 'Read more',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String shortenDescription(String description) {

    if (description.length > 200) {
      return '${description.substring(0, 200)}...';
    }
    return description;
  }
}
