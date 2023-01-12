import 'dart:convert';
import 'package:flutter/material.dart';
import 'SubwayApi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  JsonText(),
    );
  }
}


class JsonText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String json3 = '''
  {
  "errorMessage": {
    "status": 200,
    "code": "INFO-000",
    "message": "정상 처리되었습니다.",
    "link": "",
    "developerMessage": "",
    "total": 20
  },
  "realtimeArrivalList": [
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 20,
      "rowNum": 1,
      "selectedCount": 5,
      "subwayId": "1065",
      "subwayNm": null,
      "updnLine": "상행",
      "trainLineNm": "인천공항2터미널행 - 공덕방면",
      "subwayHeading": "오른쪽",
      "statnFid": "1065006502",
      "statnTid": "1065006501",
      "statnId": "1065006501",
      "statnNm": "서울",
      "trainCo": null,
      "ordkey": "01000인천공항2터미널0",
      "subwayList": "1001,1004,1063,1065",
      "statnList": "1001000133,1004000426,1063080313,1065006501",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "A2185",
      "bstatnId": "110",
      "bstatnNm": "인천공항2터미널",
      "recptnDt": "2023-01-10 22:25:25",
      "arvlMsg2": "서울 출발",
      "arvlMsg3": "서울",
      "arvlCd": "2"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 20,
      "rowNum": 2,
      "selectedCount": 5,
      "subwayId": "1065",
      "subwayNm": null,
      "updnLine": "상행",
      "trainLineNm": "인천공항2터미널행 - 공덕방면 (급행)",
      "subwayHeading": "오른쪽",
      "statnFid": "1065006502",
      "statnTid": "1065006501",
      "statnId": "1065006501",
      "statnNm": "서울",
      "trainCo": null,
      "ordkey": "01000인천공항2터미널1",
      "subwayList": "1001,1004,1063,1065",
      "statnList": "1001000133,1004000426,1063080313,1065006501",
      "btrainSttus": "급행",
      "barvlDt": "0",
      "btrainNo": "A1049",
      "bstatnId": "110",
      "bstatnNm": "인천공항2터미널 (급행)",
      "recptnDt": "2023-01-10 22:10:28",
      "arvlMsg2": "서울 출발",
      "arvlMsg3": "서울",
      "arvlCd": "2"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 20,
      "rowNum": 3,
      "selectedCount": 5,
      "subwayId": "1001",
      "subwayNm": null,
      "updnLine": "상행",
      "trainLineNm": "청량리행 - 시청방면 (급행)",
      "subwayHeading": "오른쪽",
      "statnFid": "1001000134",
      "statnTid": "1001000132",
      "statnId": "1001000133",
      "statnNm": "서울",
      "trainCo": null,
      "ordkey": "01000청량리1",
      "subwayList": "1001,1004,1063,1065",
      "statnList": "1001000133,1004000426,1063080313,1065006501",
      "btrainSttus": "급행",
      "barvlDt": "0",
      "btrainNo": "1948",
      "bstatnId": "249",
      "bstatnNm": "청량리 (급행)",
      "recptnDt": "2023-01-10 22:21:11",
      "arvlMsg2": "서울 도착",
      "arvlMsg3": "서울",
      "arvlCd": "1"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 20,
      "rowNum": 4,
      "selectedCount": 5,
      "subwayId": "1001",
      "subwayNm": null,
      "updnLine": "상행",
      "trainLineNm": "광운대행 - 시청방면",
      "subwayHeading": "오른쪽",
      "statnFid": "1001000134",
      "statnTid": "1001000132",
      "statnId": "1001000133",
      "statnNm": "서울",
      "trainCo": null,
      "ordkey": "01001광운대0",
      "subwayList": "1001,1004,1063,1065",
      "statnList": "1001000133,1004000426,1063080313,1065006501",
      "btrainSttus": null,
      "barvlDt": "0",
      "btrainNo": "0500",
      "bstatnId": "171",
      "bstatnNm": "광운대",
      "recptnDt": "2023-01-10 22:27:53",
      "arvlMsg2": "전역 도착",
      "arvlMsg3": "남영",
      "arvlCd": "5"
    },
    {
      "beginRow": null,
      "endRow": null,
      "curPage": null,
      "pageRow": null,
      "totalCount": 20,
      "rowNum": 5,
      "selectedCount": 5,
      "subwayId": "1004",
      "subwayNm": null,
      "updnLine": "상행",
      "trainLineNm": "당고개행 - 회현방면",
      "subwayHeading": "오른쪽",
      "statnFid": "1004000427",
      "statnTid": "1004000425",
      "statnId": "1004000426",
      "statnNm": "서울",
      "trainCo": null,
      "ordkey": "01001당고개0",
      "subwayList": "1001,1004,1063,1065",
      "statnList": "1001000133,1004000426,1063080313,1065006501",
      "btrainSttus": null,
      "barvlDt": "115",
      "btrainNo": "4218",
      "bstatnId": "0",
      "bstatnNm": "당고개",
      "recptnDt": "2023-01-10 22:27:37",
      "arvlMsg2": "전역 도착",
      "arvlMsg3": "숙대입구",
      "arvlCd": "5"
    }
  ]
}
  
  ''';


  Map<String, dynamic> subwayMap = jsonDecode(json3);
  // Map<String, dynamic> subwayMap = jsonDecode(json3)["errorMessage"];
  // Map<String, dynamic> subwayMap = jsonDecode(json3)["realtimeArrivalList"];

  var subway = SubwayApi.fromJson(subwayMap);
  // print(subway.runtimeType);

     final index = subway.realtimeArrivalList?.indexWhere((element) => element?.trainLineNm == "인천공항2터미널행 - 공덕방면");

    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('id: ${product.id} \nname:  ${product.name}\nimages: ${product.images?[index!].imageId}'
            //   ,style: const TextStyle(fontSize: 15),),
            Text('subwayname : ${subway.realtimeArrivalList?[index!]?.statnNm}'),
          ],
        ),
      ),
    );
  }
}




