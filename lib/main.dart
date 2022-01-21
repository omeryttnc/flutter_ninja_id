import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninja_level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('ninja'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, // altdaki golgeyo kaldirdi
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninja_level +=1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
             const Center(
              child:  CircleAvatar(
                backgroundImage: AssetImage('assets/pictures/picture-1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,
            ),
            const Text(
              'Chun -Li',
              style: TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0,),

            const Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
             Text(
              '$ninja_level',
              style: const TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                'ayse@gamail.com',
                  style:TextStyle(
                    color:Colors.grey,
                    fontSize: 18.0,
                    letterSpacing:1.0,

                  )
                )
              ],
            ),


          ],

        ),
      ),

    );
  }
}

