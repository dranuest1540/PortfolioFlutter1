import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var Heading1 = GoogleFonts.playfairDisplay(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold);
    var Heading2 = GoogleFonts.playfairDisplay(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold);
    var Heading3 = GoogleFonts.playfairDisplay(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal);
    var Content1 = GoogleFonts.playfairDisplay(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold);
    var Isi1 = GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400);
    var Isi2 = GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal);
    return Scaffold(
    backgroundColor: Colors.black,
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),

    body: SlidingSheet(
      elevation: 8,
      cornerRadius: 50,
      snapSpec: const SnapSpec(
        // Enable snapping. This is true by default.
        snap: true,
        // Set custom snapping points.
        snappings: [0.4, 0.7, 1.0],
        // Define to what the snappings relate to. In this case, 
        // the total available space that the sheet can expand to.
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      // The body widget will be displayed under the SlidingSheet
      // and a parallax effect can be applied to it.
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent])
                    .createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assets/profile.png'),
                ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.46),
              child: Column(
                children: [
                  Text('Danu Prastyo', style: Heading1,),
                  Text('UI/UX Designer', style: Heading1,)
                ],
              ),
            ),
        ]),
      ),
      builder: (context, state) {
        // This is the content of the sheet that will get
        // scrolled, if the content is bigger than the available
        // height of the sheet.
        return Container(
          margin: EdgeInsets.all(18),
          height: 500,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Jumbotron
                      Row(
                        children: [
                          Text('|', style: Heading2,),
                          Text('Pakuan', style: Heading2,),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(' University', style: Heading3,),
                          ),
                          Text('|', style: Heading2,),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  //BIOGRAPH
                  Row(
                    children: [
                      Text('BIOGRAPH', style: Content1,)
                    ],
                  ),

                  SizedBox(height: 10,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('NPM', style: Isi1,),
                            Spacer(),
                            Text('065120059', style: Isi1,),
                            SizedBox(width: 10),
                            Icon(Icons.copy,color: Colors.white, size: 18,),
                          ],
                        ),
                        Divider(color: Colors.white, thickness: 1.5,),
                        Row(
                          children: [
                            Text('Kelas', style: Isi1,),
                            Spacer(),
                            Text('6B', style: Isi1,),
                          ],
                        ),
                        Divider(color: Colors.white, thickness: 1.5,),
                        Row(
                          children: [
                            Text('Status Keaktifan', style: Isi1,),
                            Spacer(),
                            Text('aktif', style: Isi1,),
                          ],
                        ),
                        Divider(color: Colors.white, thickness: 1.5,),
                        Row(
                          children: [
                            Text('Fakultas', style: Isi1,),
                            Spacer(),
                            Text('MIPA', style: Isi1,),
                          ],
                        ),
                        Divider(color: Colors.white, thickness: 1.5,),
                        Row(
                          children: [
                            Text('Program Studi', style: Isi1,),
                            Spacer(),
                            Text('Ilmu Komputer', style: Isi1,),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  //EXPERIENCE
                  Row(
                    children: [
                      Text('EXPERIENCE', style: Content1,),
                    ],
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('16', style: Heading2),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text('Websites', style: Isi2,),
                      ),
                      Text('4', style: Heading2),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text('Flutter UI/UX', style: Isi2,),
                      ),
                      Text('8', style: Heading2),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text('App Programs', style: Isi2,),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),
                  //SKILLS
                  Row(
                    children: [
                      Text('SKILLS', style: Content1,),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(child: Text('Dibawah ini merupakan kemampuan yang saya kuasai selama beberapa tahun menjadi seorang design dan programmer. Berikut paparan keahlian yang dapat saya berikan.')),
                    ],
                  ),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Expanded(child: Text('HTML', style: Isi2,)),
                      Expanded(
                        flex: 2, 
                        child: LinearProgressIndicator(
                          value: 0.6,
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                        ),),
                        SizedBox(width: 10),
                        Text('60%'),
                        SizedBox(width: 80),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('Dart', style: Isi2,)),
                      Expanded(
                        flex: 2, 
                        child: LinearProgressIndicator(
                          value: 0.8,
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                        ),),
                        SizedBox(width: 10),
                        Text('80%'),
                        SizedBox(width: 80),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('PHP', style: Isi2,)),
                      Expanded(
                        flex: 2, 
                        child: LinearProgressIndicator(
                          value: 0.55,
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                        ),),
                        SizedBox(width: 10),
                        Text('55%'),
                        SizedBox(width: 80),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('Java Script', style: Isi2,)),
                      Expanded(
                        flex: 2, 
                        child: LinearProgressIndicator(
                          value: 0.89,
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                        ),),
                        SizedBox(width: 10),
                        Text('89%'),
                        SizedBox(width: 80),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('C++', style: Isi2,)),
                      Expanded(
                        flex: 2, 
                        child: LinearProgressIndicator(
                          value: 0.72,
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                        ),),
                        SizedBox(width: 10),
                        Text('72%'),
                        SizedBox(width: 80),
                    ],
                  ),

                  SizedBox(height: 30),

                  //CONTACT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {}, 
                        icon: Icon(FontAwesomeIcons.instagram)),
                        IconButton(
                        onPressed: () {}, 
                        icon: Icon(FontAwesomeIcons.facebook)),
                        IconButton(
                        onPressed: () {}, 
                        icon: Icon(FontAwesomeIcons.whatsapp)),
                        IconButton(
                        onPressed: () {}, 
                        icon: Icon(FontAwesomeIcons.github)),
                        IconButton(
                        onPressed: () {}, 
                        icon: Icon(FontAwesomeIcons.youtube)),
                    ],
                  ),

                  //PRIVACY POLICY
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Copyright ', style: Isi2,),
                      Icon(Icons.copyright, size: 18,),
                      Text(' 2023 Danu Prastyo. All rights Reserved', style: Isi2,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Privacy Policy | Terms & Conditions', style: Isi2,),
                    ],
                  ),

                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
  }
}