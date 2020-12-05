
class DiceeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,

        child: Scaffold(
          backgroundColor: Colors.greenAccent,
          appBar: AppBar(
            backgroundColor: Colors.greenAccent[800],// status bar color
            title: Text('DiceGame APP',style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,fontSize:50,),),
            bottom: TabBar(
              tabs: [
                Tab(text: "DiceApp"),
                Tab(text: "Contact Us"),
              ],
            ),
          ),
          body: TabBarView(

            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.blueGrey,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.blueAccent,
                              Colors.grey,
                              Colors.blueAccent,                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child:
                        const Text('simple button', style: TextStyle(fontSize:30,)),
                      ),
                    ),
                    SizedBox(height: 70,),
                    // SizedBox(height: 2,),
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.blueGrey,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[

                              Colors.blueAccent,
                              Colors.grey,
                              Colors.blueAccent,
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child:
                        const Text('Hard button', style: TextStyle(fontSize: 30,)),
                      ),
                    ),
                  ],),
              ),
              Text('Contact Page (Later will be change)'),
            ],
          ),
        ),
      ),
    );
  }
}
