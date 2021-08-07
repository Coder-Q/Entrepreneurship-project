import 'package:entrepreneurship_project/Utils/Constants.dart';
import 'package:flutter/material.dart';

class WhyBalbirTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        child: Column(
          children: [
            Center(
              child: Text(
                'WHY BALBIR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'WHY BALBIR ROLLING MILLS PVT. LTD.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Balbir Group is involved in quality Steel manufacturing in Gujarat and Maharashtra for almost a decade.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Our Commitment to our values and growth enabled us to put up a fully mechanized structural rolling mill in Silvassa to cater to the growing demand of the region. In the year 2005, the Balbir Group commenced production of quality structural steel Angles, Channels and Beams conforming to IS:2062/2011.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomBoxForThis(
                      image: Constants.allImagesPath,
                      heading: 'STRUCTURALS',
                      data:
                          'Our Commitment to our values and growth enabled us to put up a fully mechanized structural rolling mill in Silvassa to cater to the growing demand of the region. In the year 2005, the Balbir Group commenced production of quality structural steel Angles, Channels and Beams conforming to IS:2062/2011. GR-Fe 250-A',
                    ),
                    CustomBoxForThis(
                      image: Constants.barsImagePath,
                      heading: 'COLLABORATION',
                      data:
                          'Balbir Rolling Mills Ltd. has been licensed by Hennigsdorfer Stahl Engg. Gmbh, Germany – through its Indian collaborator H&K Rolling Mill Engineers Pvt. Ltd., to manufacture high quality of Thermex bars for the first time in South Gujarat.',
                    ),
                    CustomBoxForThis(
                      image: Constants.advImagePath,
                      heading: 'THE PROCESS',
                      data:
                          'A short, intensive but very precise on-line cooling of the rolled bars is imparted in the Thermex process through a proprietary. On further cooling of the bars in atmosphere , a thermal exchange (THERMEX) occurs between the core and cooled outside surface whereby the resultant bars structure is a distinct tempered , martensite at periphery and a fine grained ferritepearlite structure in the central zone. The Thermex bars produced by the above quenching and self tempering process (QST) has unique qualities of desired high strength and toughness combined with excellent ductility with bars having elongation values of 18 to 25%',
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Center(
                  child: Text(
                    'ADVANTAGES',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Constants.stdImagePath,
                      fit: BoxFit.fill,
                      width: 250,
                      height: 200,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Superior Product with consistent quality from bar to bar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Higher elongation combined with high yield strength',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'High thermal stability resisting loss of strength at high temperatures (400—600 deg. C ) such as during fires',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Better corrosion resistance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Better resistance to fatigue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'High weldability',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'High ductility',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Bond strength',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Resistance to strain aging',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBoxForThis extends StatelessWidget {
  const CustomBoxForThis(
      {Key? key,
      required this.image,
      required this.heading,
      required this.data})
      : super(key: key);
  final String image, heading, data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black45,
      ),
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          Image.asset(
            image,
            fit: BoxFit.fill,
            width: 250,
            height: 200,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            heading,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              data,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
