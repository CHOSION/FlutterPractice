// fm
import 'package:flutter/material.dart';

// 컴파일러에 시작점 알려주기 (void main())
// 플러터 최상위 함수 불러오기 (runApp())
// runApp 내에 MyApp()이라는 custom widget 이름을 Argument로 넣어주기 (runApp(MyApp()))
void main() => runApp(MyApp());

// StatelessWidget으로 MyApp custom widget 생성하기
// stl
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 반환위젯
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(
        // 견본
        primarySwatch: Colors.blue
      ),
      // home에서 MyHomePage()로 custom widget 지정
      // 하단 scaffold를 바로 가져와도 같은 결과 도출
      // 앱기능이 늘어날수록 한 페이지에 길게 코딩하는 것은 복잡하다.
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Hello_1'),
            Text('Hello_2'),
            Text('Hello_3')
          ],
        ),
      ),
    );
  }
}