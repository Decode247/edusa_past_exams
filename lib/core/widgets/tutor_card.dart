import 'package:edusa_past_exams/core/imports/imports.dart';

Widget tutorCard() {
  return Card(
    color: const Color.fromARGB(255, 254, 59, 0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(40),
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              width: Get.width * 0.90,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 189, 189, 189),
                borderRadius: BorderRadius.circular(20),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'TUTOR DETAILS',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/tutor/tutor1.jpeg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Tutor Name: Bayanda',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Tutor Surname: Mpakathi',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Subjects : Math and Physics(P1)',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Current Activity: Student at WSU',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: Get.width * 0.90,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 189, 189, 189),
                borderRadius: BorderRadius.circular(20),
                shape: BoxShape.rectangle,
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'TUTORING DETAILS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Platform Options:',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Platform 1: Zoom',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Platform 2: Whatsapp',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Platform 3: Ms Teams',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Platform 4: Facebook',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Price: R300 per Subject',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: Get.width * 0.90,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 189, 189, 189),
                borderRadius: BorderRadius.circular(20),
                shape: BoxShape.rectangle,
              ),
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(width: 60),
                    const Text(
                      'CONTACT DETAILS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 40),
                    button(
                      title: 'Email Me',
                      size: 0,
                      onPressed: () async {
                        const email = 'mpakathibayanda@gmail.com';
                        const subject = 'Application For Tutor Assist';
                        const contacts =
                            '\n\n My Contact details \nCellphone: {Number}';
                        const body =
                            'Good Day Edusa\n \n My name is {YOURNAMEE}, i\'m hereby by enquiring tutor on my Math $contacts';

                        String? encodeQueryParameters(
                            Map<String, String> params) {
                          return params.entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&');
                        }

                        final Uri mailUri = Uri(
                          scheme: 'mailto',
                          path: email,
                          query: encodeQueryParameters(
                            <String, String>{
                              'subject': subject,
                              'body': body,
                            },
                          ),
                        );
                        if (await canLaunchUrl(mailUri)) {
                          await launchUrl(mailUri);
                        }
                      },
                    ),
                    const SizedBox(width: 60),
                    button(
                      title: 'Call/WhatsApp Me',
                      size: 0,
                      onPressed: () async {
                        final uri = Uri(
                          scheme: 'tel',
                          path: "+27639145048",
                        );
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(uri);
                        }
                      },
                    ),
                    const SizedBox(width: 60),
                    button(
                      title: 'Sms Me',
                      size: 0,
                      onPressed: () async {
                        const contacts =
                            '\n\n My Contact details \nCellphone: {Number}';
                        const body =
                            'Good Day Edusa\n \n My name is {YOURNAMEE}, i\'m hereby by enquiring tutor on my Math $contacts';
                        String? encodeQueryParameters(
                            Map<String, String> params) {
                          return params.entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&');
                        }

                        final uri = Uri(
                          scheme: 'sms',
                          path: "+27639145048",
                          query: encodeQueryParameters(
                            <String, String>{
                              'body': body,
                            },
                          ),
                        );
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(uri);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
