import "package:flutter/material.dart";

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  String clk = "Clicks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //APPBAR
      appBar: AppBar(
        title: const Text("Counter Functions"),
        backgroundColor: Colors.green,
        actions: [

          // BOTON RESET
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              clickCounter = 10;
              setState(() {});
            }
          ),

          // BOTON ALARMA
          IconButton(
            icon: const Icon(Icons.access_alarm_rounded),
            onPressed: () {
              clickCounter = 100;
              setState(() {});
            },
          ),

        ],
      ),

      // CUERPO
      body: Center(
        //alineacion horizontal
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //alineacion vertical
          children: [
            Text("$clickCounter",
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text("$clk !", style: const TextStyle(fontSize: 25))
          ],
        ),
      ),

      // BOTONES FLOTANTES
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          // BOTON +1
          CustomButton(
            icon: Icons.plus_one,
            onPressed:() {
              clickCounter++;
              setState((){});
            }
          ),

          // ESPACIADO ENTRE BOTONES
          const SizedBox(height: 10),

          // BOTON -1
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed:() {
              if (clickCounter > 0) clickCounter--;
              setState((){});
            }
          ),

          // ESPACIADO ENTRE BOTONES
          const SizedBox(height: 10),

          // BOTON RESET
          CustomButton(
            icon: Icons.restore,
            onPressed:() {
              clickCounter = 0;
              setState((){});
            }
          ),

        ],
      )

    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(), //boton redondo
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
