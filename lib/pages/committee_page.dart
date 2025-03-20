import 'package:flutter/material.dart';
import 'package:unidos/pages/commitee/acm_page.dart';
import 'package:unidos/pages/commitee/csi_page.dart';
import 'package:unidos/pages/commitee/ecell_page.dart';
import 'package:unidos/pages/commitee/gdg_page.dart';
import 'package:unidos/pages/commitee/ieee_page.dart';
import 'package:unidos/pages/commitee/iete_page.dart';
import 'package:unidos/pages/commitee/isa_page.dart';
import 'package:unidos/pages/commitee/iste_page.dart';
import 'package:unidos/pages/commitee/kalaraag_page.dart';
import 'package:unidos/pages/commitee/sow_page.dart';
import 'package:unidos/pages/commitee/sports_page.dart';
import 'package:unidos/pages/commitee/wall_page.dart';

class CommitteePage extends StatelessWidget {
  final List<Map<String, dynamic>> committees = [
    {"name": "CSI", "imagePath": "assets/images/csi.jpg", "page": CsiPage()},
    {"name": "ACM", "imagePath": "assets/images/acm.jpg", "page": AcmPage()},
    {"name": "GDG", "imagePath": "assets/images/gdg.jpg", "page": GdgPage()},
    {
      "name": "E-Cell",
      "imagePath": "assets/images/ecell.jpg",
      "page": EcellPage(),
    },
    {"name": "IEEE", "imagePath": "assets/images/ieee.jpg", "page": IeeePage()},
    {"name": "IETE", "imagePath": "assets/images/iete.jpg", "page": IetePage()},
    {"name": "ISTE", "imagePath": "assets/images/iste.jpg", "page": IstePage()},
    {"name": "SOW", "imagePath": "assets/images/sow.jpg", "page": SowPage()},
    {"name": "ISA", "imagePath": "assets/images/isa.jpg", "page": IsaPage()},
    {
      "name": "Kalaraag",
      "imagePath": "assets/images/kalaraag.jpg",
      "page": KalaraagPage()
    },
    {"name": "Wall", "imagePath": "assets/images/wall.jpg", "page": WallPage()},
    {
      "name": "Sports",
      "imagePath": "assets/images/sports.jpg",
      "page": SportsPage()
    },
  ];

  CommitteePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/starry_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                "UNI-VERSE",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: committees.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => committees[index]["page"],
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          committees[index]["imagePath"]!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
