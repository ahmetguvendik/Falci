import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int yanitaskindex = 0 ;
  int yanitparaindex = 0 ;
  int yanittavsiyeindex = 0 ;

  List<String> yanitlarask = [
    "TIKLA FALIN GELSİN",
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!', ];

    List<String> yanitlarpara = [
      "TIKLA FALIN GELSİN",
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',];

    List<String> yanitlartavsiye = [
      "TIKLA FALIN GELSİN",
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text("Günlük Fal Bakılır",style: TextStyle(fontSize: 24),), centerTitle: true,
        ),
        body: Column(
          children: [
            Card(
              child: ListTile(
                title: Center(child: Text("Aşk Hayatı",style: TextStyle(color: Colors.black,fontSize: 24))),
                onTap: (){setState(() {
                  yanitaskindex = (Random().nextInt(5)+1) ;
                });},
              ),
            ),
            Card(
              child: ListTile(
            title: Center(child: Text("Para Hayatı",style: TextStyle(color: Colors.black,fontSize: 24))),
            onTap: (){ setState(() {
              yanitparaindex = (Random().nextInt(5)+1);
            });},
            ),
          ),
            Card(
              child: ListTile(
                title: Center(child: Text("Tavsiye Hayatı",style: TextStyle(color: Colors.black,fontSize: 24))),
                onTap: (){ setState(() {
                  yanittavsiyeindex = (Random().nextInt(5)+1);
                });},
              ),
            ),
          SafeArea(
            child: Container(
              child: Text(yanitlarask[yanitaskindex],style: TextStyle(fontSize: 17),),
            ),
          ),
            SizedBox(width: 20,),
            SafeArea(
              child: Container(
                child: Text(yanitlarpara[yanitparaindex],style: TextStyle(fontSize: 17),),
              ),
            ),
            SizedBox(width: 20,),
            SafeArea(
              child: Column (
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text(yanitlartavsiye[yanittavsiyeindex],style: TextStyle(fontSize: 17 ),),],
              ),
            )
          ],
        ),
      ),
    );
  }
}

