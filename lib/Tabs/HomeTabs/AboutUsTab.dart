import 'package:entrepreneurship_project/Utils/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Center(
                  child: Text(
                    'About Us',
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
                  children: [
                    Text(
                      'BALBIR ROLLING MILLS PVT. LTD.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text(
                        'Balbir is involved in quality steel manufacturing in Vapi (Gujarat) and Silvassa (UT of DNH) for almost a two decade. We take pleasure to introduce ourselves as an ISO 9001-2008 certified leading manufacturing company after two decades in Gujarat and Silvassa (UT of DNH). We are pleased to inform you that we are manufacturing best quality M.S. Billets, TMT Bar and M.S. Structural steel. We also facilitate CMC Rub cutting and branding machines for better Rub pattern to provide better bonding. We are committed to provide best quality products to our customers. To facilitate quality we provide fully integrated and testing laboratory with advanced Spectrometer and Universal Testing Machine for chemical and physical properties.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text(
                        'We are licensee of Bureau Of Indian Standards (IS 1786-2008) for sizes from 8mm – 40mm for Fe-415, Fe-415D, Fe-500, Fe-500D, Fe-550 & Fe-550D grades at our works both Silvassa and Vapi. We are widely established with excellent track record and are focused in customer satisfaction. Our main motive is to achieve brand loyalty thereby achieving loyal customers. The group encompasses steel plants at Vapi (Gujarat) and Silvassa (UT of DNH). The Group has fully automatic steel rolling mills at Vapi (Gujarat) manufacturing quality Re-bars and Structural Steel (Angels, Channels, Beams).',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text(
                        'Balbir Group having capacity of more than 100000 TPA Re-bars & MS Structural Steel.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  'Activities',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text(
                    'Balbir Group involved into manufacture from raw material to the finished Product directly through hot rolling process. It’s steel melting units in Silvassa (UT of DNH) and Vapi (Gujarat) are involved in making of M. S.Billets of prime quality. This allows our rolling division to manufacture products precisely as per standards laid down by various quality agencies.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'THE STRENGTH OF PURE STEEL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Text(
                  'WE ARE BALBIR GROUP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomBoxForThis(
                      icon: CupertinoIcons.flame_fill,
                      heading: 'Values',
                      data:
                          'Sustainable development has been a key thrust at BALBIR. It is important that we continuously contribute towards the country’s economy for a stronger India of tomorrow. Our growth in the past decade is testimony of this.',
                    ),
                    CustomBoxForThis(
                      icon: CupertinoIcons.infinite,
                      heading: 'Aim',
                      data:
                          'Balbir Group constantly strives for providing highest quality products to their customers with the responsibility of benefitting our business associates and ultimately the end customers. This is being constantly strived upon by the company through lower cost of production and efficient management without compromise in quality to provide our consumers a cost effective product.',
                    ),
                    CustomBoxForThis(
                      icon: CupertinoIcons.lab_flask_solid,
                      heading: 'Features',
                      data:
                          'Controlled low temperature rolling is practiced to give high strength to the structures. Chemical composition is maintained strictly as standards by our plant manufacturing raw materials.Facility to roll special sizes and length as per specific requirements of customers.Facility of straightening of all sections for special application like power transmission, telecom tower & precision engineering.',
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              child: Image.asset(
                Constants.isiImagePath,
                fit: BoxFit.fill,
                width: 150,
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBoxForThis extends StatelessWidget {
  final IconData icon;
  final String heading, data;
  const CustomBoxForThis(
      {Key? key, required this.icon, required this.heading, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black45,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 48,
          ),
          Text(
            heading,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            data,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
