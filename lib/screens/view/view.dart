import 'package:edusa_past_exams/core/imports/imports.dart';

class Viewers extends StatefulWidget {
  const Viewers({Key? key}) : super(key: key);

  @override
  State<Viewers> createState() => _ViewersState();
}

class _ViewersState extends State<Viewers> {
  final data = Get.arguments;

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final whichTerm = data['data'];
    return WillPopScope(
      onWillPop: () async {
        bool willPop = true;
        if (whichTerm['whichTerm'] == 'term1') {
          Get.offAllNamed(
            '/term1',
            arguments: data['data'],
          );
          return willPop;
        }
        if (whichTerm['whichTerm'] == 'term2') {
          Get.offAllNamed(
            '/term2',
            arguments: data['data'],
          );
          return willPop;
        }
        if (whichTerm['whichTerm'] == 'term3') {
          Get.offAllNamed(
            '/term3',
            arguments: data['data'],
          );
          return willPop;
        }
        if (whichTerm['whichTerm'] == 'term4') {
          Get.offAllNamed(
            '/term4',
            arguments: data['data'],
          );
          return willPop;
        }
        return willPop;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(data['title']),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              if (whichTerm['whichTerm'] == 'term1') {
                Get.offAllNamed(
                  '/term1',
                  arguments: data['data'],
                );
              }
              if (whichTerm['whichTerm'] == 'term2') {
                Get.offAllNamed(
                  '/term2',
                  arguments: data['data'],
                );
              }
              if (whichTerm['whichTerm'] == 'term3') {
                Get.offAllNamed(
                  '/term3',
                  arguments: data['data'],
                );
              }
              if (whichTerm['whichTerm'] == 'term4') {
                Get.offAllNamed(
                  '/term4',
                  arguments: data['data'],
                );
              }
            },
          ),
        ),
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              SfPdfViewer.asset(data['qPath']),
              SfPdfViewer.asset(data['mPath']),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.orangeAccent,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            _pageController.jumpToPage(index);
          },
          selectedItemColor: Colors.deepOrange,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.question_answer),
                label: 'Questions',
                tooltip: 'Question Paper'),
            BottomNavigationBarItem(
              icon: Icon(Icons.done),
              label: 'Memo',
            ),
          ],
        ),
      ),
    );
  }
}
