import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),

      body: OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return PortraitLayout();
          }
          else{
            return LandscapeLayout();
          }
        },
      ),

    );
  }
}

class PortraitLayout extends StatelessWidget {
  PortraitLayout({Key? key}) : super(key: key);
  final List<String> Images = [
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    // Add more image URLs here
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
            ),
            Positioned(
                top: 10,
                left: 17,
                child: CircleAvatar(
                  radius: 180,
                  backgroundImage: NetworkImage('https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4'),
                )),
            Positioned(
                top: 400,
                left: 80,
                child: Text('Sazzad Hossain',style: TextStyle(color: Colors.green,fontSize: 30),)),
            Positioned(
                top: 450,
                child: Wrap(
                  children: [
                    Text("Hey! I'm Sazzad Hossain. Flutter Developer is available here.",style: TextStyle(color: Colors.white),)

                  ],
                )),
            Positioned(
                top: 480,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: Images.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        child: Image.network(
                          Images[index],
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                )
                )
        ],
        ),
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  LandscapeLayout({Key? key}) : super(key: key);
  final List<String> Images = [
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    "https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4",
    // Add more image URLs here
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          Positioned(
              top: 10,
              left: 5,
              child: CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage('https://scontent.fdac68-2.fna.fbcdn.net/v/t39.30808-1/364765015_1334384337489300_9211528646095833305_n.jpg?stp=dst-jpg_p240x240&_nc_cat=107&ccb=1-7&_nc_sid=fe8171&_nc_eui2=AeG8ek8gEpQja3Td34lDbWpH-913JNiG0a_73Xck2IbRr5glcTth6uIMLjCvhoZA324s-9aCuDWV24Jk8-a_JsFY&_nc_ohc=pRAHWLVvMpwAX_YK9xF&_nc_ht=scontent.fdac68-2.fna&oh=00_AfA1PcSaP-2IEoiZXfDKpnMoMAA1sGrXBYCTzV6JxsYDOQ&oe=651B38A4'),
              )),
          Positioned(
              top: 10,
              left: 330,
              child: Text('Sazzad Hossain',style: TextStyle(color: Colors.green,fontSize: 30),)),
          Positioned(
              top: 50,
              left: 330,
              child: Wrap(
                children: [
                  Text("Hey! I'm Sazzad Hossain. Flutter Developer is available here.",style: TextStyle(color: Colors.white),)

                ],
              )),
          Positioned(
            top: 80,
            left: 330,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
                itemCount: Images.length,
                itemBuilder: (context,index){
                  return Card(
                    child: Container(
                      child: Image.network(
                        Images[index],
                        fit: BoxFit.cover,
                      ),

                    ),
                  );
                }),

           )


        ],
      ),
    );
  }
}